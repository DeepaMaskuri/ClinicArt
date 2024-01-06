package org.jsp.pharma;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/ShowAppointments")
public class ShowAppointments extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
	  HttpSession s6 = req.getSession();
	  boolean signin = Boolean.parseBoolean((String)s6.getAttribute("signin"));
	  if(signin)
	  {
		  RequestDispatcher dispatcher = req.getRequestDispatcher("DisplayAppointments.jsp");
		  dispatcher.forward(req, resp);
	  }
	  else
	  {
		  RequestDispatcher dispatcher = req.getRequestDispatcher("home.jsp");
		  dispatcher.forward(req, resp);
 
	  }
	}

}
