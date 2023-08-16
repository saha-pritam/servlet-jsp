package servletjsp.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = "/login")
public class Login extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Cookie cookie = new Cookie("user_email", req.getParameter("user_email"));
		resp.addCookie(cookie);
		resp.getWriter().print("<h1>Hi "+req.getParameter("user_email")+" you have successfully logged in.</h1>");
		resp.getWriter().print("<a href=\"servlet\">Go To Next Page</a>");
	}
}
