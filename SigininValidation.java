package org.jsp.pharma;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/signin")
public class SigininValidation extends HttpServlet
{
   @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
{
	String email = req.getParameter("mail");
	PharmacyDao dao = new PharmacyDao();
	if (dao.validateSignin(email)) 
	{
        HttpSession s1 = req.getSession();
        s1.setAttribute("signin", "true");
        s1.setAttribute("usermail", email);
		RequestDispatcher dispatcher = req.getRequestDispatcher("home.jsp");
		dispatcher.forward(req, resp);
		
	}
	else
	{
		RequestDispatcher dispatcher = req.getRequestDispatcher("Registration.html");
		dispatcher.forward(req, resp);
	}
}
}
