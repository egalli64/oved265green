package admins;

import java.io.IOException;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

@WebServlet("/admins/AdminLogInBridge")
public class AdminLogInBridge extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/green")
	private DataSource ds;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession sessionAdmin = request.getSession();

		if (sessionAdmin.getAttribute("loggedUser") != null) {
			request.getRequestDispatcher("/administration/administration.jsp").forward(request, response);

		} else {
			request.getRequestDispatcher("/Admin.jsp").forward(request, response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}