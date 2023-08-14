package servletjsp.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class ServletTwo extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.getWriter().print("<h1>Hi I Am Servlet Two.</h1>");
		resp.getWriter().print("<h1>ParamA = "+this.getServletConfig().getInitParameter("paramA")+"</h1>");
		resp.getWriter().print("<h1>ParamB = "+this.getServletConfig().getInitParameter("paramB")+"</h1>");
	}
}
