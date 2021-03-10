const pid = document.getElementById("pid").innerHTML;
const table = document.getElementById("patientTable");

function addPatient(patient) {
    const name = patient["f_name"] + ' ' + patient["m_name"] + ' ' + patient["l_name"];

    const row = table.insertRow(-1);
    const pidCell = row.insertCell(0);
    const nameCell = row.insertCell(1);
    const dobCell = row.insertCell(2);
    const emailCell = row.insertCell(3);
    const phoneCell = row.insertCell(4);
    //const buttonCell = row.insertCell(5)

    const editButton = document.createElement("button");
    const deleteButton = document.createElement("button");

    editButton.style.borderRadius = "5px";
    editButton.innerHTML = "Edit";

    deleteButton.style.borderRadius = "5px";
    deleteButton.style.backgroundColor = "#f44336";
    deleteButton.innerHTML = "Delete";

    pidCell.innerHTML = patient["PID"];
    nameCell.innerHTML = name;
    dobCell.innerHTML = patient["dob"];
    emailCell.innerHTML = patient["email"];
    phoneCell.innerHTML = patient["phone_one"]
    //buttonCell.appendChild(editButton);
    //buttonCell.appendChild(deleteButton);
}

async function fetchPatients() {
    const response = await axios.get("./functions/fetch_patients.php");
    if (response.status == 200) {
        const patients = response.data;
        console.log(patients);
        for (let i = 0; i < patients.length; i++) {
            addPatient(patients[i]);
        }
    } else {
        console.log(response.data);
    }
}

fetchPatients();