let pid = document.getElementById("pid").innerHTML;
pid = pid.substring(0,1)
const docList = document.getElementById("doc-list")
const li = document.createElement("li");
const link = document.createElement("a");

async function fetchFileNames() {
    const response = await axios.get("documents/fetch_file_names.php?pid=" + pid);
    console.log(response.data);
    const fileNames = response.data;
    const filteredNames = fileNames.filter(function (name) {
        const arr = ["..", ".", "labwork"];
        return !arr.includes(name);
    });
    console.log(filteredNames);
    for (name of filteredNames) {
        console.log(pid);
        console.log("documents/" + pid + "/" + name);
        link.href = "documents/" + pid + "/" + name;
        link.target = "_blank";
        link.innerHTML = name;
        li.appendChild(link);
        docList.appendChild(li);
    }
}

fetchFileNames();