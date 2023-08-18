package servletjsp.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = "/login")
public class Login extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(req.getParameter("user_email").equals("saha.pritam.work@gmail.com") && req.getParameter("user_password").equals("abcd"))
			req.getSession().setAttribute("user_email", req.getParameter("user_email"));
		else
			resp.sendRedirect("index.jsp");
		resp.getWriter().print("<h1>Hi "+req.getSession().getAttribute("user_email")+" you have successfully logged in.</h1>");
		resp.getWriter().print("<a href=\"result.jsp\">Go To Result Page</a>");
	}
}
