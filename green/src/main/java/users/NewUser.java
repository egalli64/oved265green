package users;

import java.io.IOException;
import java.time.LocalDate;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/users/NewUser")
public class NewUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Resource(name = "jdbc/green")
	private DataSource ds;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		UserDAO userDao = new UserDAO(ds);
		String firstName = request.getParameter("firstName");
		String LastName = request.getParameter("LastName");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		LocalDate birthdate = LocalDate.parse(request.getParameter("birthdate"));
		String password = request.getParameter("password");
		String birthplace = request.getParameter("birthplace");
		String license = request.getParameter("license");
		LocalDate expirationLicense = LocalDate.parse(request.getParameter("expirationLicense"));
		Long creditCard = Long.parseLong(request.getParameter("creditCard"));
		Integer cvv = Integer.parseInt(request.getParameter("cvv"));
		LocalDate expirationCard = LocalDate.parse(request.getParameter("expirationCard"));

		if (userDao.createNewUser(firstName, LastName, phone, email, password, birthdate, birthplace, license,
				expirationLicense, creditCard, cvv, expirationCard)) {
			request.getRequestDispatcher("/registrationConfirmed.html").forward(request, response);
		} else {
			request.setAttribute("resultRegistration", userDao.createNewUser(firstName, LastName, phone, email,
					password, birthdate, birthplace, license, expirationLicense, creditCard, cvv, expirationCard));
			request.getRequestDispatcher("/NuovoUtente.jsp").forward(request, response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
