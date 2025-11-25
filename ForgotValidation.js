function validateForgotForm() {

    let user = document.getElementById("username").value.trim();
    let newPass = document.getElementById("newPassword").value.trim();
    let confirmPass = document.getElementById("confirmPassword").value.trim();
    let errorMsg = document.getElementById("errorMsg");


    errorMsg.textContent = "";

    if (user === "") {
        errorMsg.textContent = "Please enter username.";
        return false;
    }

    if (newPass === "") {
        errorMsg.textContent = "Please enter new password.";
        return false;
    }

    if (confirmPass === "") {
        errorMsg.textContent = "Please enter confirm password.";
        return false;
    }

    if (newPass.length < 6) {
        errorMsg.textContent = "Password must be at least 6 characters.";
        return false;
    }

    if (newPass !== confirmPass) {
        errorMsg.textContent = "New password and confirm password do not match!";
        return false;
    }

    return true;  
}
