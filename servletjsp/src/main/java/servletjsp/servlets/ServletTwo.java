package servletjsp.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servletTwo")
public class ServletTwo extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Hi I Am Servlet Two");
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("servletOne");
		resp.getWriter().println("<h1>Hi I Am Servlet Two.</h1>");
		requestDispatcher.include(req, resp);
	}
}
