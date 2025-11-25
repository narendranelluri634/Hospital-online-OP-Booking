package hospital.servelt;

import java.io.IOException;
import hospital.dao.LoginDAo;
import hospital.dto.LoginDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/LoginUserServlet")
public class LoginUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        LoginDAo dao = new LoginDAo();
        LoginDTO dto = new LoginDTO();
        dto.setUsername(username);
        dto.setPassword(password);

        boolean valid = dao.getUserDetails(dto);

        if (valid) {
            response.sendRedirect("home.jsp");
        } else {
            response.sendRedirect("login.jsp?error=invalid");
        }
    }
}
