package servletjsp.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = "/servletOne",initParams = {@WebInitParam(name = "param1", value = "100"),
		@WebInitParam(name = "param2", value = "200")})
public class ServletOne extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.getWriter().print("<h1>Hi I Am Servlet One.</h1>");
		resp.getWriter().print("<h1>Param1 = "+this.getServletConfig().getInitParameter("param1")+"</h1>");
		resp.getWriter().print("<h1>Param1 = "+this.getServletConfig().getInitParameter("param2")+"</h1>");
	}
}
