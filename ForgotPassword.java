package hospital.servelt;

import java.io.IOException;

import hospital.dao.ForgotDAo;
import hospital.dto.ForgotDTo;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/ForgotPassword")
public class ForgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ForgotPassword() {
        super();
       
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String newPassword = request.getParameter("newPassword");
		String confirmPassword = request.getParameter("confirmPassword");
		
		if(!newPassword.equals(confirmPassword)) {
			response.sendRedirect("forgotPassword.jsp?error=PasswordMismatch");
            return;
		}
		
		
		ForgotDTo  fdto = new ForgotDTo();
		fdto.setUsername(username);
		fdto.setNewPassword(newPassword);
		fdto.setConfirmPassword(confirmPassword);
		
		ForgotDAo fgd = new ForgotDAo();
		boolean status = fgd.updatePassword(fdto);
		
		if(status) {
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);

		}else {
			RequestDispatcher rd = request.getRequestDispatcher("forgot.jsp");
			rd.forward(request, response);
		}
	}

}
