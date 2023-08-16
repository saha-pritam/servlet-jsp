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
		resp.getWriter().print("<h1>Hi "+req.getParameter("user_email")+" you have successfully logged in.</h1>");
		resp.getWriter().print("<form method=\"post\" action=\"servlet\">");
		resp.getWriter().print("<input type=\"email\" hidden name=\"user_email\" value=\""+req.getParameter("user_email")+"\">");
		resp.getWriter().print("<button>Go To Next Page</button>");
		resp.getWriter().print("</form>");
	}
}
