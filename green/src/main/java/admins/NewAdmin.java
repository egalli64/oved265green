package admins;

import java.io.IOException;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/admins/NewAdmin")
public class NewAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/green")
	private DataSource ds;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		AdminDAO adminDao = new AdminDAO(ds);
		String firstName = request.getParameter("firstName");
		String LastName = request.getParameter("LastName");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		if (adminDao.createNewAdmin(firstName, LastName, password, email)) {
			request.getRequestDispatcher("/administration/addConfirmed.html").forward(request, response);
		} else {
			request.setAttribute("resultAdd", adminDao.createNewAdmin(firstName, LastName, password, email));
			request.getRequestDispatcher("/administration/NuovoAdmin.jsp").forward(request, response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
