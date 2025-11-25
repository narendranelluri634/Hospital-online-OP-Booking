<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>
    <style>
        .card {
           background-image: url("https://img.freepik.com/premium-vector/luxury-doctor-logo-design_625460-511.jpg?w=2000");
           border-radius: 15px;
           background-size: cover;
        }

        h2 {
            color: #ffffff;
        }
        
        p {
            color: #ffffff;
        }

        label {
            font-weight: 500;
            color: #ffffff;
            text-align: left;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>

<body>

<div class="container mt-5 ">
    <div class="card shadow-lg p-4 col-md-6 offset-md-3">
        <h2 class="text-center mb-4">User Login</h2>

        <form action="LoginUserServlet" method="post"  name="myLogin">
        
            <div class="mb-3">
                <label for="username" class="m-1">User Name</label>
                <input type="text" name="username" class="form-control" required id="username" placeholder="Enter User Name!">
            </div>

            <div class="mb-3">
                <label for="password" class="m-1">Password</label>
                <input type="password" name="password" class="form-control" required id="password" placeholder="Enter Password">
            </div>
            <div class="text-end">
                <a href="forgot.jsp" class="text-light">Forgot Password?</a>
            </div>

            <div class="text-center">
                <button type="submit" class="btn btn-primary w-10 mt-2">Login</button>
            </div>
        </form>

    </div>
</div>



</body>
</html>
