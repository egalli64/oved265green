package admins;

import java.io.IOException;
import java.util.Optional;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

@WebServlet("/admins/AdminLogIn")
public class AdminLogIn extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/green")
	private DataSource ds;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession sessionAdmin = request.getSession();
		AdminDAO adminDao = new AdminDAO(ds);
		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String password = request.getParameter("password");		
		Optional<AdminBean> opt = adminDao.checkAdminByNameFLAndPassword(firstName, lastName, password);
		
		if (opt.isPresent()) {
			sessionAdmin.setAttribute("loggedUser", opt.get());			
			request.getRequestDispatcher("/administration/administration.jsp").forward(request, response);
			
		} else {	
			sessionAdmin.setAttribute("logError", true);
			request.getRequestDispatcher("/Admin.jsp").forward(request, response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}