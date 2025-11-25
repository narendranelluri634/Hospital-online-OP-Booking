<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>CityCare Hospital</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
  <link href="style.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
</head>

<body>

  <nav class="navbar navbar-expand-lg navbar-dark">
    <div class="container">
      <a class="navbar-brand" href="#">CityCare Hospital</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navmenu">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navmenu">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item"><a href="#" class="nav-link active" onclick = "display('myHome')">Home</a></li>
          <li class="nav-item"><a href="#" class="nav-link active" onclick = "display('aboutHOspital')">About</a></li>
          <li class="nav-item"><a href="#" class="nav-link active" onclick = "display('myDoctors')">Doctors</a></li>
          <li class="nav-item"><a href="#" class="nav-link active" onclick = "display('myServices')">Services</a></li>
          <li class="nav-item"><a href="#" class="nav-link active" onclick = "display('aboutHOspital')">Contact</a></li>
        </ul>
      </div>
    </div>
  </nav>


  <section class="hero-section" id="myHome">
    <div class="hero-content text-center">
      <h1>Your Health, Our Priority</h1>
      <p>Comprehensive medical care with expert doctors and advanced facilities — trusted by families for over 20 years.</p>
    </div>
  </section>

  <section class="about-section text-center">
    <div class="container">
      <h2>About CityCare Hospital</h2>
      <p>
        CityCare Hospital is dedicated to delivering exceptional healthcare services with a team of highly qualified doctors and modern technology.
        We focus on patient-centric care, ensuring the highest safety, comfort, and recovery standards.
      </p>
    </div>
  </section>

  <section class="doctors-section text-center" id="myDoctors">
    <div class="container">
      <h2 class="mb-5">Our Expert Doctors</h2>
      <div class="row g-4 justify-content-center">
        <div class="col-md-4 col-lg-3">
          <div class="doctor-card">
            <img src="https://img.freepik.com/free-photo/female-doctor-hospital-with-stethoscope_23-2148827776.jpg?semt=ais_hybrid&w=740" alt="">
            <div class="doctor-card-body">
              <h5>Dr. Naga Mani</h5>
              <p>MBBS (General Medicine)</p>
            </div>
          </div>
        </div>

        <div class="col-md-4 col-lg-3">
          <div class="doctor-card">
            <img src="https://carebesthospital.com/_next/image?url=%2Fdoctors%2Fdr-rajnish-sharma.jpg&w=640&q=75" alt="">
            <div class="doctor-card-body">
              <h5>Dr. Arun Sharma</h5>
              <p>MBBS, MS (Orthopedics)</p>
            </div>
          </div>
        </div>

        <div class="col-md-4 col-lg-3">
          <div class="doctor-card">
            <img src="https://drpagadalasmedidentpolyclinic.com/wp-content/uploads/2018/12/Doctor-Kiranmayi-Pagadala.jpg" alt="">
            <div class="doctor-card-body">
              <h5>Dr. Nikhila Verma</h5>
              <p>MBBS, DM (Cardiology)</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>


  <section class="services-section text-center" id="myServices">
    <div class="container">
      <h2 class="mb-5">Our Services</h2>
      <div class="row g-4 justify-content-center">
        <div class="col-md-4 col-lg-3">
          <div class="service-box">
            <div class="service-icon">🫀</div>
            <h5>Cardiology</h5>
            <p>Advanced heart care and cardiac treatments by expert specialists.</p>
          </div>
        </div>
        <div class="col-md-4 col-lg-3">
          <div class="service-box">
            <div class="service-icon">🧠</div>
            <h5>Neurology</h5>
            <p>Comprehensive brain and nervous system diagnostics and therapies.</p>
          </div>
        </div>
        <div class="col-md-4 col-lg-3">
          <div class="service-box">
            <div class="service-icon">👶</div>
            <h5>Gynecology</h5>
            <p>Women’s health services, maternity care, and prenatal support.</p>
          </div>
        </div>
      </div>
    </div>
  </section>


  <section class="booking-section py-5 bg-light">
    <div class="container">
      <h2 class="text-center mb-4">Online OP Booking</h2>
      <form action="BookingServlet" method="post" class="col-md-6 offset-md-3 p-4 border rounded bg-white shadow-sm">
        <div class="mb-3">
          <label for="name" class="form-label">Full Name</label>
          <input type="text" class="form-control" id="name" name="name" placeholder="Enter your full name" required>
        </div>
        <div class="mb-3">
          <label for="mobile" class="form-label">Mobile Number</label>
          <input type="text" class="form-control" id="mobile" name="mobile" placeholder="Enter your mobile number" required>
        </div>
        <div class="mb-3">
          <label for="email" class="form-label">Email</label>
          <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email address" required>
        </div>
        <div class="mb-3">
          <label for="time" class="form-label">Preferred Time</label>
          <input type="text" class="form-control" id="time" name="time" placeholder="Enter your preferred time" required>
        </div>
        <div class="mb-3">
          <label for="place" class="form-label">Place</label>
          <input type="text" class="form-control" id="place" name="place" placeholder="Enter your location" required>
        </div>
        <div class="text-center">
            <button type="submit" name="action" value="book" class="btn btn-primary px-4">
                   Book Appointment
           </button>
          
           <a href="ViewAllServlet" class="viewAll btn btn-success">View All Appointments</a>

        </div>


      </form>
   
    </div>
  </section>
     

  <footer id="aboutHOspital">
    <div class="container">
      <div class="row text-center text-md-start">
        <div class="col-md-6">
          <h5>About CityCare</h5>
          <p>Providing trusted health care with expert doctors and modern facilities. Your health is our top priority.</p>
        </div>
        <div class="col-md-6">
          <h5>Contact Us</h5>
          <ul class="list-unstyled">
            <li>📍 KPHB Phase I, Road Number 1</li>
            <li>📧 citycare@gmail.com</li>
            <li>📞 +91 99999xxxxx</li>
          </ul>
        </div>
      </div>
      <div class="footer-bottom mt-3 text-center">
        © 2025 CityCare Hospital | Designed with ❤️ for your health
      </div>
    </div>
  </footer>
</body>
</html>
