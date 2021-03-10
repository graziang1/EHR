const pid = document.getElementById("pid").innerHTML;
const fields = ["f_name", "m_name", "l_name", "p_name", "ss_number", "email",
    "ec_name", "ec_number", "address_one", "address_two", "city", "state", "zip",
    "dob", "sex", "marital_status", "phone_one", "phone_two"];

function addPatientField(field, value) {
    const input = document.getElementById(field);
    input.value = value;
}

async function fetchPatientInfo() {
    const url = "./functions/fetch_patient_info.php?pid=" + pid;
    const response = await axios.get(url);
    if (response.status == 200) {
        if (response.data != "0 results") {
            const patient = response.data[0];
            console.log(patient);
            for (field in patient) {
                if (fields.includes(field)) {
                    addPatientField(field, patient[field]);
                }
            }
        } else {
            console.log(response.data)
        }
    } else {
        console.log(response.data)
    }
}

async function clearPatientInfo() {
    const url =  "./functions/clear_patient_info.php";
    const response = await axios.post(url, {
        pid: pid,
        fields: fields
    });
    if (response.status == 200) {
        console.log(response.data);
    } else {
        console.log(response.data);
    }
    document.getElementById("f_name").value = "";
}

async function addPatientInfo () {
    const new_info = {};
    const url = "./functions/add_new_patient_info.php";

    for (field of fields) {
        new_info[field] = document.getElementById(field).value;
    }

    const response = await axios.post(url, {
        pid: pid,
        info: new_info
    });

    console.log(response.data);
}

function savePatientInfo() {
    //clearPatientInfo();
    addPatientInfo();
}

fetchPatientInfo();