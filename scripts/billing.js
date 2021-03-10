const table = document.getElementById("table");
const pid = document.getElementById("pid").innerHTML;

function addCoverage(coverage) {
    const row = table.insertRow(-1);
    const polCell = row.insertCell(0);
    const groupCell = row.insertCell(1);
    const insCell = row.insertCell(2)
    const subCell = row.insertCell(3)
    const inumCell = row.insertCell(3)

    polCell.innerHTML = coverage["pr_policy_number"];
    groupCell.innerHTML = coverage["pr_group_number"];
    insCell.innerHTML = coverage["pr_insurance_company"]
    subCell.innerHTML = coverage["pr_subscriber"];
    inumCell.innerHTML = coverage["insurance_number"];
}

function addHistory(history) {
    const row = table.insertRow(-1);
    const adjCell = row.insertCell(0);
    const amountCell = row.insertCell(1);
    const postedCell = row.insertCell(2)
    const balCell = row.insertCell(3)
    const bsCell = row.insertCell(4)
    const methodCell = row.insertCell(5);
    const statusCell = row.insertCell(6)
    const notesCell = row.insertCell(7)
    const tovCell = row.insertCell(8)

    adjCell.innerHTML = history["adjustment"];
    amountCell.innerHTML = history["amount_paid"];
    postedCell.innerHTML = history["posted_date"]
    balCell.innerHTML = history["balance"];
    bsCell.innerHTML = history["billing_status"];
    methodCell.innerHTML = history["payment_method"];
    statusCell.innerHTML = history["verify_payment"]
    notesCell.innerHTML = history["notes"];
    tovCell.innerHTML = history["tov"];
}

async function fetchCoverage() {
    const url =  "./functions/fetch_coverage.php?pid=" + pid;

    const response = await axios.get(url);
    if (response.status == 200) {
        if (!response.data.includes("0 results")) {
            const coverage = response.data;
            for (let i = 0; i < coverage.length; i++) {
                addCoverage(coverage[i]);
            }
        }
    }
}

async function fetchBillingHistory() {
    const url =  "./functions/fetch_billing_history.php?pid=" + pid;

    const response = await axios.get(url);
    if (response.status == 200) {
        if (!response.data.includes("0 results")) {
            const history = response.data;
            for (let i = 0; i < history.length; i++) {
                addHistory(history[i]);
            }
        }
    }
}

