const table = document.getElementById("table");
const pid = document.getElementById("pid").innerHTML;

function addLabwork(dov, type, result) {
    
    const row = table.insertRow(-1);
    const dovCell = row.insertCell(0);
    const typeCell = row.insertCell(1);
    const resultCell = row.insertCell(2)

    dovCell.innerHTML = dov;
    typeCell.innerHTML = type;
    resultCell.innerHTML = result;

}

function clearTable() {
    for (let i = 1; i < table.rows.length; i++) {
        table.deleteRow(i);
    }
}

async function fetchLabwork() {
    const url = "./functions/fetch_labwork.php?pid=" + pid;
    const response = await axios.get(url);
    console.log(response.data);
    if (response.status == 200) {
        if (response.data != "0 results") {
            clearTable();
            const labwork = response.data;
            for (let i = 0; i < labwork.length; i++) {
                addLabwork(labwork[i]["dov"], labwork[i]["type"], labwork[i]["test_results"]);
            }
        } else {
            console.log(response.data)
        }
    } else {
        console.log(response.data)
    }
}

function openAddLabworkPage() {
    window.open('./connectors/add_patient_labwork.php');
}

console.log("hi");
fetchLabwork();