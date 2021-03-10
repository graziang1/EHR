const pid = document.getElementById("pid").innerHTML;
const table = document.getElementById("table");

function addHeaders(fields) {
    const header = table.createTHead()
    
    for (field of fields) {
        const hcell = document.createElement("th")
        hcell.innerHTML = field;
        header.appendChild(hcell);
    }
}

function addVitals(vitals) {
    const row = table.insertRow(-1);
    const tempCell = row.insertCell(0);
    const bpCell = row.insertCell(1)
    const brCell = row.insertCell(2);
    const prCell = row.insertCell(3);

    tempCell.innerHTML = vitals["body_temperature"];
    bpCell.innerHTML = vitals["blood_pressure"];
    brCell.innerHTML = vitals["breathing_rate"];
    prCell.innerHTML = vitals["pulse_rate"];
}

function addMedication(med) {
    const row = table.insertRow(-1);
    const nameCell = row.insertCell(0);
    const doseCell = row.insertCell(1)
    const effectCell = row.insertCell(2);

    nameCell.innerHTML = med["medication_name"];
    doseCell.innerHTML = med["dose"];
    effectCell.innerHTML = med["effect"];
}

function addOperation(op) {
    const row = table.insertRow(-1);
    const dateCell = row.insertCell(0);
    const hospCell = row.insertCell(1)
    const reasonCell = row.insertCell(2);

    dateCell.innerHTML = op["dov"];
    hospCell.innerHTML = op["hospital"];
    reasonCell.innerHTML = op["reason"];
}

function addSubstance(substance) {
    const row = table.insertRow(-1);
    const drugsCell = row.insertCell(0);
    const alcoholCell = row.insertCell(1)
    const smokingCell = row.insertCell(2);

    drugsCell.innerHTML = substance["drugs"];
    alcoholCell.innerHTML = substance["alcohol"];
    smokingCell.innerHTML = substance["smoking"];
}

function clearTable() {
    
}

function test() {
    table.deleteTHead();
}

async function fetchVitals() {
    const url = "./functions/fetch_vitals.php?pid=" + pid;
    const response = await axios.get(url);
    if (response.status == 200) {
        if (!response.data.includes("0 results")) {
            console.log(response.data);
            const vitals = response.data;
            for (let i = 0; i < vitals.length; i++) {
                addVitals(vitals[i]);
            }
        } else {
            console.log(response.data)
        }
    } else {
        console.log(response.data)
    };
}

async function fetchMedications() {
    const url = "./functions/fetch_medications.php?pid=" + pid;
    const response = await axios.get(url);
    if (response.status == 200) {
        if (!response.data.includes("0 results")) {
            console.log(response.data);
            const meds = response.data;
            for (let i = 0; i < meds.length; i++) {
                addMedication(meds[i]);
            }
        } else {
            console.log(response.data)
        }
    } else {
        console.log(response.data)
    }
}

async function fetchOperations() {
    const url = "./functions/fetch_operations.php?pid=" + 1
    const response = await axios.get(url);
    
    if (response.status == 200) {
        if (!response.data.includes("0 results")) {
            console.log(response.data);
            const operations = response.data;
            for (let i = 0; i < operations.length; i++) {
                addOperation(operations[i]);
            }
        } else {
            console.log(response.data)
        }
    } else {
        console.log(response.data)
    }
}

async function fetchSubstances() {
    const url = "./functions/fetch_patient_substances.php?pid=" + 1
    const response = await axios.get(url);
    if (response.status == 200) {
        if (!response.data.includes("0 results")) {
            console.log(response.data);
            const substances = response.data;
            for (let i = 0; i < substances.length; i++) {
                addSubstance(substances[i]);
            }
        } else {
            console.log(response.data)
        }
    } else {
        console.log(response.data)
    }
}
