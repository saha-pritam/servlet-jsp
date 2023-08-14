package servletjsp.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/myServlet")
public class MyServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String occupation = req.getParameter("occupation");
		String membership = req.getParameter("membership");
		String agreement = req.getParameter("agreement");
		
		System.out.println("Username :- "+username);
		System.out.println("Email :- "+email);
		System.out.println("Password :- "+password);
		System.out.println("Occupation :- "+occupation);
		System.out.println("Membership :- "+membership);
		System.out.println("Agreement :- "+agreement);
		
		resp.getWriter().print("<h1>Username :- "+username+"</h1>");
		resp.getWriter().print("<h1>Email :- "+email+"</h1>");
		resp.getWriter().print("<h1>Password :- "+password+"</h1>");
		resp.getWriter().print("<h1>Occupation :- "+occupation+"</h1>");
		resp.getWriter().print("<h1>Membership :- "+membership+"</h1>");
		resp.getWriter().print("<h1>Agreement :- "+agreement+"</h1>");
	}
}
