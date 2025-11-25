<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Appointment Success - CityCare Hospital</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

  <style>
    body {
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      font-family: 'Poppins', sans-serif;
    }

    .jumbotron {
      background-color : #000000;
      box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
      border-radius: 25px;
      padding: 50px;
      max-width: 600px;
      text-align: center;
      
    }

    .jumbotron h3 {
      color: #ffffff;
      font-weight: 600;
      margin-bottom: 15px;
      font-size: 25px;
    }

    .jumbotron h1 {
      color: #ffffff;
      font-weight: 700;
      font-size: 2.3rem;
      margin-bottom: 25px;
    }

    .success-icon {
      font-size: 90px;
      color: #4CAF50;
      margin-bottom: 20px;
      animation: bounce 1.5s infinite;
    }

  </style>
</head>
<body>

  <div class="jumbotron">
    <div class="success-icon">✅</div>
    <%
        String username = (String) session.getAttribute("username");
        if (username == null) {
            username = "User";
        }
    %>
    <h3>Hello! <span class="text-danger"><strong><i><%= username %></i></strong></span>
     Appointment Was Booked</h3>
    <h1>Thank You ! Visit Again</h1>
  </div>

</body>
</html>
