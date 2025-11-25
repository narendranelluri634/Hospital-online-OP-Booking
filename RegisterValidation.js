let fullnameE1 = document.getElementById("fullname");
let usernameE1 = document.getElementById("username");
let emailidE1 = document.getElementById("emailid");
let passwordE1 = document.getElementById("password");
let confirmpasswordE1 = document.getElementById("confirmpassword");
let genderE1 = document.getElementById("gender");

let mainError = document.getElementById("mainError");

function registrionValidation() {

    mainError.textContent = "";
    let fullNameValue = fullnameE1.value.trim();
    let userNameValue = usernameE1.value.trim();
    let emailIdValue = emailidE1.value.trim();
    let passwordValue = passwordE1.value.trim();
    let confirmPasswordValue = confirmpasswordE1.value.trim();
    let genderValue = genderE1.value.trim();

    if (fullNameValue === "") {
        mainError.textContent = "Please enter full name";
        return false;
    }

    if (userNameValue === "") {
        mainError.textContent = "Please enter username";
        return false;
    }

    if (emailIdValue === "") {
        mainError.textContent = "Please enter email";
        return false;
    }

    if (passwordValue === "") {
        mainError.textContent = "Please enter password";
        return false;
    }

    if (confirmPasswordValue === "") {
        mainError.textContent = "Please enter confirm password";
        return false;
    }

    if (passwordValue !== confirmPasswordValue) {
        mainError.textContent = "Passwords do not match";
        return false;
    }

    if (genderValue === "") {
        mainError.textContent = "Please enter gender";
        return false;
    }

    return true;
}
