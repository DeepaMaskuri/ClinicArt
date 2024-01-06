package org.jsp.pharma;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/appointment")
public class AppointMentValidation extends HttpServlet
{
   @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
{
	   HttpSession s5 = req.getSession();
	   boolean status = Boolean.parseBoolean((String)s5.getAttribute("signin"));
	   RequestDispatcher dispatcher;
	   if(status)
	   {
		 dispatcher = req.getRequestDispatcher("DoctorsInfo.jsp");
		 dispatcher.forward(req, resp);
		 
	   }
	   else
	   {
		  dispatcher = req.getRequestDispatcher("home.jsp");
		  dispatcher.forward(req, resp);
			 
	   }
		   
}
}
