const table = document.getElementById("table");
const pid = document.getElementById("pid").innerHTML;

function addRecommendation(rec, dov, tov) {
    
    const row = table.insertRow(-1);
    const recCell = row.insertCell(0);
    const dovCell = row.insertCell(1);
    const tovCell = row.insertCell(2)

    recCell.innerHTML = rec;
    dovCell.innerHTML = dov;
    tovCell.innerHTML = tov;

}

async function fetchRecommendations() {
    const url = "./functions/fetch_recommendations.php?pid=" + pid;
    const response = await axios.get(url);
    console.log(response.data);
    if (response.status == 200) {
        if (response.data != "0 results") {
            const recs = response.data;
            for (let i = 0; i < recs.length; i++) {
                addRecommendation(recs[i]["recommendation"], recs[i]["dov"], recs[i]["tov"]);
            }
        } else {
            console.log(response.data)
        }
    } else {
        console.log(response.data)
    }
}

fetchRecommendations();