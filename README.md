Online Hospital OP (Out-Patient) Booking System

A web-based application built using JSP, Servlets, JDBC, MVC Architecture that allows patients to register, log in, search doctors, book OP appointments, view appointment history.

User Registration

User Login

Forgot Password

Session Management

Doctor Management

View all doctors

Filter by specialization (ENT, Cardiology, Ortho, etc.)

Check available time slots

Appointment Booking

Select department

Choose doctor

Pick appointment date

Choose available time slot

Confirm booking

Appointment Management

View booked appointments

View history


Project Structure

OnlineHospitalOPBooking/
│
├── src/
│   └── com.hospitalop
│          ├── controller        (Servlets)
│          │      ├── RegisterServlet.java
│          │      ├── LoginServlet.java
│          │      ├── ForgotPasswordServlet.java
│          │      ├── BookOpServlet.java
│          │      ├── ViewDoctorsServlet.java
│          │      ├── AppointmentHistoryServlet.java
│          │      └── CancelAppointmentServlet.java
│          │
│          ├── dao               (Database Logic)
│          │      ├── UserDAO.java
│          │      ├── DoctorDAO.java
│          │      └── AppointmentDAO.java
│          │
│          ├── dto               (Data Carriers)
│          │      ├── UserDTO.java
│          │      ├── DoctorDTO.java
│          │      └── AppointmentDTO.java
│          │
│          └── util              (Utility Classes)
│                 └── DBConnection.java
│
├── WebContent / webapp
│       ├── index.jsp
│       ├── login.jsp
│       ├── register.jsp
│       ├── forgotPassword.jsp
│       ├── home.jsp
│       ├── bookOp.jsp
│       ├── appointmentSuccess.jsp
│       ├── appointmentHistory.jsp
│       ├── doctorsList.jsp
│       ├── error.jsp
│       │
│       ├── css/
│       │     └── style.css
│       └── images/
│
├── META-INF/
│
└── WEB-INF/
        ├── web.xml
        └── lib/

