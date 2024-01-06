package org.jsp.pharma;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/usernote")
public class UserNote extends HttpServlet
{
  @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
{ 
	
	String name = req.getParameter("uname");
	String mail = req.getParameter("umail");
	String mobile = req.getParameter("umobile");
	String choice = req.getParameter("uchoice");
	String note= req.getParameter("unote");
	PrintWriter out = resp.getWriter();
	HttpSession s4 = req.getSession();
	PharmacyDao dao=new PharmacyDao();
	boolean status = Boolean.parseBoolean((String)s4.getAttribute("signin"));
	if(status)
	{
		if(dao.sendUserNote(name,mail,mobile,choice,note))
		{
			RequestDispatcher dispatcher = req.getRequestDispatcher("home.jsp");
			dispatcher.include(req, resp);
			out.println("<center><h3 style='color:green;'>Your Query Submitted..!!</h3></center>");
		}
		else
		{
			RequestDispatcher dispatcher = req.getRequestDispatcher("home.jsp");
			dispatcher.include(req, resp);
			out.println("<center><h3 style='color:red;'>Please Login..!!</h3></center>");
		
		}
	}
}
}
