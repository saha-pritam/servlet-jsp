package servletjsp.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servletOne")
public class ServletOne extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Hi I Am Servlet One");
		req.setAttribute("addition", Integer.parseInt(req.getParameter("num1"))+Integer.parseInt(req.getParameter("num2")));
		req.getRequestDispatcher("servletTwo").forward(req, resp);
	}
}
