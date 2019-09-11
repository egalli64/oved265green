package users;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/users/UserLogIn")
public class UserLogIn extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/green")
	private DataSource ds;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		UserDAO userDao = new UserDAO(ds);
		String mail = request.getParameter("mail");
		String password = request.getParameter("password");
		if (userDao.checkUserByMailAndPassword(mail, password)) {
			request.getRequestDispatcher("/LogIn.html").forward(request, response);
		} else {
			request.setAttribute("resultLogIN", userDao.checkUserByMailAndPassword(mail, password));
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
