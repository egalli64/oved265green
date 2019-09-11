package admins;

import java.io.IOException;
import java.time.LocalDate;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import users.UserDAO;

@WebServlet("/admins/EditUser")
public class EditUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/green")
	private DataSource ds;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		UserDAO userDao = new UserDAO(ds);
		Long id = Long.parseLong(request.getParameter("id"));
		String firstName = request.getParameter("firstName");
		String LastName = request.getParameter("LastName");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		LocalDate birthdate = LocalDate.parse(request.getParameter("birthdate"));
		String birthplace = request.getParameter("birthplace");
		String license = request.getParameter("license");
		LocalDate expirationLicense = LocalDate.parse(request.getParameter("expirationLicense"));
		
		if (userDao.updateUser(id, firstName, LastName, phone, email, birthdate, birthplace, license,
				expirationLicense)) {
			request.getRequestDispatcher("/admins/ShowTabUser").forward(request, response);
		} else {
			request.setAttribute("updateFailed", true);
			request.getRequestDispatcher("/administration/usersTab.jsp").forward(request, response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
