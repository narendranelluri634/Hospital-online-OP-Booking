<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Forgot Password</title>
    <script src="ForgotValidation.js"></script>

    <style>
        body {
            background: secondary;
            font-family: Arial, sans-serif;
            height: 100vh;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .container {
            background-image: url("https://wallpaperaccess.com/full/3750138.jpg");
            background-size : cover;
            background-position : center;
            padding: 30px 35px;
            border-radius: 12px;
            width: 380px;
            box-shadow: 0 6px 25px rgba(0,0,0,0.3);
            animation: fadeIn 0.6s ease-in-out;
        }

        h2 {
            text-align: center;
            color: #333;
            font-size: 26px;
            margin-bottom: 20px;
        }

        label {
            font-weight: 600;
            color: #ffffff;
        }

        input {
            width: 100%;
            padding: 10px 12px;
            margin-top: 5px;
            margin-bottom: 18px;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 15px;
        }

        input:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 0 4px rgba(0,123,255,0.5);
        }

        button {
            width: 100%;
            background: #007bff;
            color: #fff;
            padding: 12px;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            font-weight: bold;
            transition: 0.3s;
        }

        button:hover {
            background: #0056b3;
        }

        #errorMsg {
            text-align: center;
            font-size: 14px;
            margin-bottom: 10px;
        }
    </style>
</head>

<body>

<div class="container">
    <h2>Forgot Password</h2>

    <form action="ForgotPassword" method="post" onsubmit="return validateForgotForm()">

        <label>Username</label>
        <input type="text" id="username" name="username">

        <label>New Password</label>
        <input type="password" id="newPassword" name="newPassword">

        <label>Confirm Password</label>
        <input type="password" id="confirmPassword" name="confirmPassword">

        <span id="errorMsg" style="color:red;"></span>

        <div class="text-center">
            <button type="submit" class="mt-2">Update Password</button>
        </div>

    </form>
</div>

</body>
</html>
