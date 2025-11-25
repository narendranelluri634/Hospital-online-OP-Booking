package hospital.servelt;

import java.io.IOException;

import hospital.dao.BookingDAo;
import hospital.dto.BookingDTo;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/BookingServlet")
public class BookingYourOP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BookingYourOP() {
        super();
      
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String mobile = request.getParameter("mobile");
		String email = request.getParameter("email");
		String time = request.getParameter("time");
		String place = request.getParameter("place");
		
		
		BookingDTo bdto = new BookingDTo();
		bdto.setName(name);
		bdto.setMobile(mobile);
		bdto.setEmail(email);
		bdto.setTime(time);
		bdto.setPlace(place);
		
		BookingDAo bao = new BookingDAo();
		
		
		String status = bao.getOPBooking(bdto);
		if(status.equals("Success")) {

			HttpSession session = request.getSession();
			session.setAttribute("username", name);
			
		    RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
		    rd.forward(request, response);
		} else {
		    RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
		    rd.forward(request, response);
		}

		
	}

}
