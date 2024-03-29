package admins;

import java.io.IOException;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import users.UserDAO;

@WebServlet("/admins/ShowTabUser")
public class ShowTabUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Resource(name = "jdbc/green")
	private DataSource ds;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		UserDAO userDao = new UserDAO(ds);		
		request.setAttribute("users", userDao.showUsers());		
		request.getRequestDispatcher("/administration/usersTab.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	
}
