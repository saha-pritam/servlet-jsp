package servletjsp.servlets;

import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class MyServlet implements Servlet{
	
	
	public MyServlet() {
		System.out.println("Hi I am constructor.");
	}

	@Override
	public void destroy() {
		System.out.println("Hi I am destroy().");
	}

	@Override
	public ServletConfig getServletConfig() {
		System.out.println("Hi I am getServletConfig().");
		return null;
	}

	@Override
	public String getServletInfo() {
		System.out.println("Hi I am getServletInfo().");
		return null;
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("Hi I am init().");
		
	}

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		res.getWriter().print("<h1>This is my first servlet.</h1>");
		System.out.println("Hi I am service().");
	}
}
