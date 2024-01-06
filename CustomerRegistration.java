package org.jsp.pharma;

import java.io.IOException;

import javax.swing.plaf.basic.BasicInternalFrameTitlePane.IconifyAction;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/CustomerRegistration")
public class CustomerRegistration extends HttpServlet
{
   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
   {
	   String name=req.getParameter("name");
	   String age=req.getParameter("age");
	   String dob=req.getParameter("dob");
	   String mobile=req.getParameter("mobile");
	   String gender=req.getParameter("gender");
	   String mail=req.getParameter("mail");
	   String address=req.getParameter("hno")+","+req.getParameter("street")+","+req.getParameter("clm")+","+req.getParameter("city")+","+req.getParameter("pin")+","+req.getParameter("state");
	   
	   PharmacyDao dao = new PharmacyDao();
	   
	   if (dao.registration(name,mail,age,mobile,dob,gender,address))
	   {
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
