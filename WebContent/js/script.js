function validateMenuItemForm() {
    var name = document.forms["menuItemForm"]["name"].value;
    var price = document.forms["menuItemForm"]["price"].value;
    var dateofLaunch = document.forms["menuItemForm"]["dateofLaunch"].value;
    var category = document.forms["menuItemForm"]["category"].value;

    if (name == "") {
        alert("Title is required. ");
        return false;
    } else if (name.length < 2 || name.length > 65) {
        alert("Title should have 2 to 65 characters.");
        return false;
    }

    else if (price == "") {
        alert("Price is required. ");
        return false;
    } else if (isNaN(price)) {
        alert("Price has to be a number.");
        return false;
    }

    else if (dateofLaunch == "") {
        alert("Date of Launch is required. ");
        return false;
    }

    else if (category == "") {
        alert("Select one category ");
        return false;
    } else {
        document.getElementById("category").innerHTML = "";
    }

}
