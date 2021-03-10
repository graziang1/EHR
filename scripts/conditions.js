const table = document.getElementById("diagnosisTable");
const status = document.getElementById("status");
const pid = document.getElementById("pid").innerHTML;

function addDiagnosis(dcid, code, description, date) {
    const row = table.insertRow(-1);
    const dcidCell = row.insertCell(0)
    const icdCodeCell = row.insertCell(1);
    const descriptionCell = row.insertCell(2);
    const dateCell = row.insertCell(3);
    const buttonCell = row.insertCell(4);
    
    const editButton = document.createElement("button");
    const deleteButton = document.createElement("button");

    editButton.style.borderRadius = "5px";
    editButton.innerHTML = "Edit";

    deleteButton.style.borderRadius = "5px";
    deleteButton.style.backgroundColor = "#f44336";
    deleteButton.innerHTML = "Delete";

    dcidCell.innerHTML = dcid;
    icdCodeCell.innerHTML = code;
    descriptionCell.innerHTML = description;
    dateCell.innerHTML = date;
    //buttonCell.appendChild(editButton);
    buttonCell.appendChild(deleteButton);
}

function openAddDiagnosisPage() {
    window.open("./connectors/add_diagnostic_code.php");
}

function clearTable() {
    for (let i = 1; i < table.rows.length; i++) {
        table.deleteRow(i);
    }
}

async function fetchDiagnoses() {
    const url =  "./functions/fetch_diagnoses.php?pid=" + pid;
    const response = await axios.get(url);
    if (response.status == 200 && !response.data.includes("0 results")) {
        status.innerHTML = "";
        clearTable();
        const diagnoses = response.data;
        for (let i = 0; i < diagnoses.length; i++) {
            addDiagnosis(diagnoses[i]["DCID"], diagnoses[i]["icd_code"], diagnoses[i]["description"], diagnoses[i]["dov"]);
        }
        for (let i = 1; i < table.rows.length; i++) {
            const deleteButton = table.rows[i].children[4].children[1];
            deleteButton.onclick = function () {
                deleteDiagnosis(i);
            }
        }
    } else {
        status.innerHTML = "No results found!"
        console.log(response.data);
    }
    
}

async function deleteDiagnosis(index) {
    const row = table.rows[index];
    const dcid = row.children[0].innerHTML;
    const url =  "./functions/delete_diagnosis.php?dcid=" + dcid;
    row.remove();
    const response = await axios.delete(url);
    if (response.status == 200) {
        console.log("Successfully deleted");
    } else {
        console.log(response.data)
    }
}

fetchDiagnoses(pid);


