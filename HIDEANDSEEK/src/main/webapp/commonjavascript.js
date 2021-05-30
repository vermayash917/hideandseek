//For index page and degrave page
// function to go to homepage
function onclick_home(){
    window.location.href="index.jsp";
}

// function to go to Engrave Page
function onclick_engrave(){
    window.location.href="engrave.jsp";
}

// function to go to Degrave Page
function onclick_degrave(){
    window.location.href="degrave.jsp";
}


// Function to go to home page
function onclick_back(){
    window.location.href="index.jsp";
}

//For Engrave
// Function make visible and invisible buttons and text fields
function for_checkbox() {
    const checked = document.getElementById("checkbox1").checked;
    if (checked === true) {
        document.getElementById("button_1").style.visibility = "hidden";
        document.getElementById("email1").style.visibility = "visible";
        document.getElementById("button_2").style.visibility = "visible";
        document.getElementById("name1").style.visibility = "visible";
        document.getElementById("label1").style.visibility = "visible";
        document.getElementById("label2").style.visibility = "visible";
    } else {
        document.getElementById("button_1").style.visibility = "visible";
        document.getElementById("email1").style.visibility = "hidden";
        document.getElementById("button_2").style.visibility = "hidden";
        document.getElementById("name1").style.visibility = "hidden";
        document.getElementById("label1").style.visibility = "hidden";
        document.getElementById("label2").style.visibility = "hidden";
    }
}

// Function to Validate form using javascript
function validateForm(){
    const checked = document.getElementById("checkbox1").checked;
    if(checked===true){
        const input_text = document.forms["Engrave_form"]["engrave_text"].value;
        const nam = document.forms["Engrave_form"]["name"].value;
        const email = document.forms["Engrave_form"]["user_email"].value;
        if (input_text === "") {
            alert("Input Text must be filled out");
            return false;
        }
        else if (nam === "") {
            alert("Name must be filled out");
            return false;
        }
        else if(nam.search(/^[a-zA-Z0-9ßÄÖÜäöü_.-]+$/)===-1)
        {
            alert("Please Enter correct Name again");
            return false;
        }
        else if (email === "") {
            alert("Email must be filled out");
            return false;
        }
    }
    else{
        const x = document.forms["Engrave_form"]["engrave_text"].value;
        if (x === " ") {
            alert("Engrave Text cannot be blank. Please enter again");
            return false;
        }
    }
}