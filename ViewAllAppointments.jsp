<%@ page import="java.util.*, hospital.dto.DashboardDto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Appointments</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<style>
    body {
        background: #f2f5f9;
        font-family: Arial, sans-serif;
    }
    
    .table-container {
        width: 85%;
        margin: 40px auto;
        padding: 25px;
        background: #ffffff;
        border-radius: 12px;
        box-shadow: 0px 4px 12px rgba(0,0,0,0.1);
    }
    h2 {
        text-align: center;
        font-weight: bold;
        padding-bottom: 10px;
        color: #333;
    }
    
    th {
        background-color: #0d6efd;
        color: white;
        text-align: center;
        padding: 12px;
    }
    thead {
        background-color: #0d6efd; 
        color: white;
    }
     
    td {
        text-align: center;
        padding: 12px;
        font-size: 15px;
    }
    
    tr:nth-child(even) { background-color: #f8f9fa; }
    tr:hover { background-color: #eaf4ff; }
</style>

</head>
<body>

<div class="table-container ">
    <h2>All Appointments Bookings</h2>

    <table class="table table-bordered table-striped ">
        <thead>
            <tr>
                <th>Name</th>
                <th>Mobile</th>
                <th>Email</th>
                <th>Time</th>
                <th>Place</th>
            </tr>
        </thead>

        <tbody>
            <%
                List<DashboardDto> list = (List<DashboardDto>) request.getAttribute("data");

                if (list != null && !list.isEmpty()) {
                    for (DashboardDto a : list) {
            %>
                <tr>
                    <td><%= a.getName() %></td>
                    <td><%= a.getMobile() %></td>
                    <td><%= a.getEmail() %></td>
                    <td><%= a.getTime() %></td>
                    <td><%= a.getPlace() %></td>
                </tr>
            <%
                    }
                } else {
            %>
                <tr>
                    <td colspan="5" class="text-center text-danger">No records found!</td>
                </tr>
            <% } %>
        </tbody>

    </table>
</div>

</body>
</html>
