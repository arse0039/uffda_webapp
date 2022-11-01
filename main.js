function showform(formtype){
    if (formtype == "edit") {
        document.getElementById("activity-insert").style.visibility="hidden"
        document.getElementById("activity-update").style.visibility="visible"
        document.getElementById("activity-delete").style.visibility="hidden"
        document.getElementById("table").style.filter="blur(3px)"
        document.getElementById("header").style.filter="blur(3px)"    
    }else if (formtype == "delete") {
        document.getElementById("activity-insert").style.visibility="hidden"
        document.getElementById("activity-update").style.visibility="hidden"
        document.getElementById("activity-delete").style.visibility="visible"
        document.getElementById("table").style.filter="blur(3px)"
        document.getElementById("header").style.filter="blur(3px)"                 
    } else if (formtype == "insert") {
        document.getElementById("activity-insert").style.visibility="visible"
        document.getElementById("activity-update").style.visibility="hidden"
        document.getElementById("activity-delete").style.visibility="hidden"
        document.getElementById("table").style.filter="blur(3px)"
        document.getElementById("header").style.filter="blur(3px)" 
    } else {
        document.getElementById("activity-insert").style.visibility="hidden"
        document.getElementById("activity-update").style.visibility="hidden"
        document.getElementById("activity-delete").style.visibility="hidden"
        document.getElementById("table").style.filter="blur(0px)"
        document.getElementById("header").style.filter="blur(0px)" 
    }
}
function editActivity() {showform("edit");}
function deleteActivity() {showform("delete");}
function addActivity() {showform("insert");}
function closeForm() {showform("close");}

