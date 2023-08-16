package servletjsp.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servlet")
public class Servlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Cookie[] cookies = req.getCookies();
		String user_email=null;
		for(Cookie cookie:cookies)
			if(cookie.getName().equals("user_email")) {
				user_email=cookie.getValue();
				break;
			}
		resp.getWriter().print("<h1>Hi "+user_email+" this is next page.</h1>");
	}
}
