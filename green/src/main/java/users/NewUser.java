package users;

import java.io.IOException;

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
		
//		CountryDAO dao = new CountryDAO(ds);
//		String regionId = request.getParameter("regionId");
//
//		if (regionId != null) {
//			request.setAttribute("countries", dao.getCountriesByRegion(regionId));
//		} else {
//			String defaultId = "1";
//			request.setAttribute("countries", dao.getCountriesByRegion(defaultId));
//		}
//		request.getRequestDispatcher("/esercizioCountries/countriesResults.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}