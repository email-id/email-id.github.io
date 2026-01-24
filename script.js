let editId = null;

document.getElementById("mailForm").addEventListener("submit", function(e){
    e.preventDefault();
    let formData = new FormData(this);

    if(editId){
        formData.append("id", editId);
        fetch("update.php", {
            method: "POST",
            body: formData
        }).then(res => res.text()).then(() => {
            alert("Updated!");
            editId = null;
            this.reset();
            loadData();
        });
    } else {
        fetch("insert.php", {
            method: "POST",
            body: formData
        }).then(res => res.text()).then(() => {
            alert("Saved!");
            this.reset();
            loadData();
        });
    }
});

function loadData(){
    fetch("fetch.php")
    .then(res => res.json())
    .then(data => {
        let rows = "";
        data.forEach((row, index) => {
            rows += `
            <tr>
                <td>${index+1}</td>
                <td>${row.email}</td>
                <td>${row.dropbox}</td>
                <td>${row.google_drive}</td>
                <td>${row.one_drive}</td>
                <td>${row.mega}</td>
                <td>
                    <button onclick="editRow(${row.id}, '${row.email}', '${row.dropbox}', '${row.google_drive}', '${row.one_drive}', '${row.mega}')">Edit</button>
                    <button onclick="deleteRow(${row.id})">Delete</button>
                </td>
            </tr>`;
        });
        document.getElementById("dataBody").innerHTML = rows;
    });
}

function deleteRow(id){
    if(confirm("Are you sure?")){
        let formData = new FormData();
        formData.append("id", id);

        fetch("delete.php", {
            method: "POST",
            body: formData
        }).then(() => loadData());
    }
}

function editRow(id, email, dropbox, google, one, mega){
    editId = id;
    document.querySelector("input[name='email']").value = email;
    document.querySelector("input[name='dropbox']").value = dropbox;
    document.querySelector("input[name='google_drive']").value = google;
    document.querySelector("input[name='one_drive']").value = one;
    document.querySelector("input[name='mega']").value = mega;
}

loadData();
