package org.jsp.pharma;

import java.io.IOException;
import java.sql.DriverManager;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/logout")
public class LogoutValidation extends HttpServlet 
{
  @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
{
	
	   HttpSession s1 = req.getSession();
	   s1.setAttribute("signin", "false");
	   RequestDispatcher dispatcher = req.getRequestDispatcher("home.jsp");
	   dispatcher.forward(req, resp);
			
		
		
	 }
}
