package hospital.servelt;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import hospital.dao.HospitalDaoClass;
import hospital.dto.HospitalDtoClass;

@WebServlet("/HospitalUserServlet")
public class HospitalUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public HospitalUserServlet() {
        super();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String fullName = request.getParameter("fullName");
        String userName = request.getParameter("userName");
        String emailId = request.getParameter("emailId");
        String password = request.getParameter("password");
        String gender = request.getParameter("gender");


        HospitalDtoClass hds = new HospitalDtoClass();
        hds.setFullName(fullName);
        hds.setUserName(userName);
        hds.setEmailId(emailId);
        hds.setPassword(password);
        hds.setGender(gender);

        HospitalDaoClass hdas = new HospitalDaoClass();
        String status = hdas.registerUser(hds);

        RequestDispatcher rd;
        if (status.equals("Success")) {
            rd = request.getRequestDispatcher("login.jsp");
        } else {
            request.setAttribute("error", "Registration failed. Please try again.");
            rd = request.getRequestDispatcher("index.jsp");
        }
        rd.forward(request, response);
    }
}