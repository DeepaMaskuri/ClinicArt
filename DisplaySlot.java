package org.jsp.pharma;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/slots")
public class DisplaySlot extends HttpServlet
{
   @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String temp = req.getParameter("slno");
		HttpSession s6 = req.getSession();
		s6.setAttribute("slno", temp);
		RequestDispatcher dispatcher = req.getRequestDispatcher("DoctorsSlots.jsp");
		dispatcher.forward(req, resp);
	}
}
