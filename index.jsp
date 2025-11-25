<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
    <script src="./RegisterValidation.js"></script>
    <style>
        body {
            background: transparent;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .card {
            background-image: url("https://w0.peakpx.com/wallpaper/634/107/HD-wallpaper-stethoscope-reflection-stethoscope-medical-device.jpg");
            background-size: cover;
            background-position: center;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.3);
            color: white;
        }

        .card-overlay {
            background-color: rgba(0, 0, 0, 0.6);
            border-radius: 15px;
            padding: 30px;
        }

        h2 {
            color: #ffffff;
        }

        label {
            font-weight: 500;
            color: #ffffff;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        a {
            color: #00ffff;
        }

        a:hover {
            color: #ffffff;
            text-decoration: underline;
        }

        
        .error {
           color: red;
           font-size: 14px;
           margin-top: 4px;
           display: block;
           font-weight: 400;
         }
        
    </style>
</head>

<body>
<div class="container">
    <div class="card col-md-6 offset-md-3">
        <div class="card-overlay">
            <h2 class="text-center mb-4">User Registration</h2>

            <form action="HospitalUserServlet" method="post" name="myRegistration" onsubmit="return registrionValidation()">

                <div class="mb-3">
                    <label for="fullname">Full Name</label>
                    <input type="text" name="fullName" class="form-control" required
                           id="fullname" placeholder="Enter your full name">
                    
                </div>

                <div class="mb-3">
                    <label for="username">User Name</label>
                    <input type="text" name="userName" class="form-control" required
                           id="username" placeholder="Enter a username">
                    
                </div>

                <div class="mb-3">
                    <label for="emailid">Email ID</label>
                    <input type="email" name="emailId" class="form-control" required
                           id="emailid" placeholder="Enter your email">
                    
                </div>

                <div class="mb-3">
                    <label for="password">Password</label>
                    <input type="password" name="password" class="form-control" required
                           id="password" placeholder="Enter password">
                    <p id="passwordError"></p>
                </div>

                <div class="mb-3">
                    <label for="confirmpassword">Confirm Password</label>
                    <input type="password" name="Cpassword" class="form-control" required
                           id="confirmpassword" placeholder="Re-enter password">
                   
                </div>

                <div class="mb-3">
                    <label for="gender">Gender</label>
                    <input type="text" name="gender" class="form-control" required
                           id="gender" placeholder="Gender">
                    
                </div>
                <p id="mainError" style="color: red; font-size: 16px;"></p>

                <div class="text-center">
                    <button type="submit" class="btn btn-primary mt-2">Register</button>
                </div>
            </form>

            <p class="text-center mt-3">
                Already registered? <a href="login.jsp">Login here</a>
            </p>
        </div>
    </div>
    
</div>
 
</body>
</html>