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
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("Hi I Am ServletOne.");
		
		req.getSession().setAttribute("name", req.getParameter("name"));
		req.getServletContext().setAttribute("name", req.getParameter("name"));
		
		resp.getWriter().print("<h1>I am ServletOne</h1>");
		resp.getWriter().print("<h1>In Parameter :- "+req.getParameter("name")+"</h1>");
		resp.getWriter().print("<h1>In Session :- "+req.getSession().getAttribute("name")+"</h1>");
		resp.getWriter().print("<h1>In Servlet Context :- "+req.getServletContext().getAttribute("name")+"</h1>");
	}
	
}
