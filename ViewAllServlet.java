package hospital.servelt;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import hospital.dao.DashboardDAo;

import hospital.dto.DashboardDto;

import java.io.IOException;
import java.util.List;

@WebServlet("/ViewAllServlet")
public class ViewAllServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        DashboardDAo dao = new DashboardDAo();
        List<DashboardDto> list = dao.getAllOPS();

        request.setAttribute("data", list);

        RequestDispatcher rd = request.getRequestDispatcher("ViewAllAppointments.jsp");
        rd.forward(request, response);
    }
}
