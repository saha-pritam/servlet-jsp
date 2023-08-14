package servletjsp.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/servletThree")
public class ServletThree extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Hi I Am Servlet Three");
		resp.getWriter().print("<h1>Number 1 :- "+req.getParameter("num1")+"</h1>");
		resp.getWriter().print("<h1>Number 2 :- "+req.getParameter("num2")+"</h1>");
		resp.getWriter().print("<h1>Addition Result :- "+req.getAttribute("addition")+"</h1>");
		resp.getWriter().print("<h1>Multiplication Result :- "+req.getAttribute("multiplication")+"</h1>");
		
		req.removeAttribute("addition");
		req.removeAttribute("multiplication");
		
		resp.getWriter().print("<br><h1>After Removing Attributes</h1>");
		resp.getWriter().print("<h1>Addition Result :- "+req.getAttribute("addition")+"</h1>");
		resp.getWriter().print("<h1>Multiplication Result :- "+req.getAttribute("multiplication")+"</h1>");
	}
}
