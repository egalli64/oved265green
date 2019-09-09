package filter;

import java.io.IOException;
import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter(dispatcherTypes = { DispatcherType.REQUEST }, urlPatterns = { "/administration.jsp" })
public class AdminsFilter implements Filter {

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		if (request instanceof HttpServletRequest) {
			HttpServletRequest hsr = (HttpServletRequest) request;
			HttpSession sessionAdmin = hsr.getSession();
//			sessionAdmin.getAttribute("admin")
			if (sessionAdmin.getAttribute("admin") != null ) {
				chain.doFilter(request, response);
			}else {
				HttpServletResponse hsr1 = (HttpServletResponse) response;
				hsr1.setContentType("text/html");
				hsr1.sendError(HttpServletResponse.SC_BAD_REQUEST, "We are sorry but seems that You are not allowed to visit this page");
			}

			

		}
	}
}