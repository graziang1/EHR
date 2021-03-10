const table = document.getElementById("table");
const pid = document.getElementById("pid").innerHTML;

function addImmunization(immunization) {
    const row = table.insertRow(-1);
    const typeCell = row.insertCell(0);
    const dateCell = row.insertCell(1);
    const doseCell = row.insertCell(2)
    const adminCell = row.insertCell(3)

    typeCell.innerHTML = immunization["type"];
    dateCell.innerHTML = immunization["dov"];
    doseCell.innerHTML = immunization["dose"];
    adminCell.innerHTML = immunization["administered_by"];
}

async function fetchImmunizations() {
    
    const url =  "./functions/fetch_immunizations.php?pid=" + pid;

    const response = await axios.get(url);
    if (response.status == 200) {
        if (!response.data.includes("0 results")) {
            const immunizations = response.data;
            for (let i = 0; i < immunizations.length; i++) {
                addImmunization(immunizations[i]);
            }
        }
    }
}

fetchImmunizations();