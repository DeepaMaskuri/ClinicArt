package org.jsp.pharma;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AppDetails")
public class AppointmentDetails extends HttpServlet
{
  @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
{
	String fname = req.getParameter("fname");
	String lname = req.getParameter("lname");
	String gender = req.getParameter("mygender");
	String dob = req.getParameter("dob");
	String phone = req.getParameter("phone");
	String address = req.getParameter("add");
	String fvisit = req.getParameter("visit");
	String doctor = req.getParameter("doctor");
	String details = req.getParameter("details");
	
	String mail = (String)req.getSession().getAttribute("usermail");
	int value = Integer.parseInt((String)req.getParameter("slot"));
	int id = Integer.parseInt((String)req.getParameter("id"));
	String column = "slot"+value;
	PharmacyDao dao = new PharmacyDao();
	PrintWriter out = resp.getWriter();
	if(dao.takeAppointment(fname, lname, gender, dob, mail, phone, address, fvisit, doctor, details,column))
	{
		dao.changeStatus(column, id);
		RequestDispatcher dispatcher = req.getRequestDispatcher("home.jsp");
		dispatcher.forward(req, resp);
	}
	else
	{
		RequestDispatcher dispatcher = req.getRequestDispatcher("Appointment.jsp");
		dispatcher.include(req, resp);
		out.println("<center><h2 style='color:red;'>Please Check Your data..!!<br>OR<br>Already you Have an Appointment</h2></center>");
	}
}
}
