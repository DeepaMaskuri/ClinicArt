package org.jsp.pharma;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PharmacyDao 
{
	private String url="jdbc:mysql://localhost:3306/pharmacy?user=root&password=12345";
	private String query;
	private Connection connect;
	private PreparedStatement ps;
	private ResultSet rs;
	private String driver = "com.mysql.cj.jdbc.Driver";
	
	public boolean validateSignin(String userMail)
	{
		query="select * from registration where mail=?";
		
		try 
		{
			Class.forName(driver);
			connect = DriverManager.getConnection(url);
			ps=connect.prepareStatement(query);
			ps.setString(1, userMail);
			rs=ps.executeQuery();
			if (rs.isBeforeFirst())
			{
				return true;
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return false;
		
	}
	public boolean registration(String name,String mail,String age,String mobile,String dob,String gender,String address)
	{
		query = "insert into registration values(?,?,?,?,?,?,?)";
		try 
		{
			Class.forName(driver);
			connect=DriverManager.getConnection(url);
			ps=connect.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, age);
			ps.setString(3, dob);
			ps.setString(4, mobile);
			ps.setString(5, gender);
			ps.setString(6, mail);
			ps.setString(7, address);
			
			int res=ps.executeUpdate();
			if(res>0)
			{
				return true;
			}
			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return false;
		
		
	}
	public boolean sendUserNote(String name,String mail,String mobile,String choice,String note)
	{
		query = "insert into enquiry values(?,?,?,?,?)";
		try 
		{
			Class.forName(driver);
			connect=DriverManager.getConnection(url);
			ps=connect.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, mail);
			ps.setString(3, mobile);
			ps.setString(4, choice);
			ps.setString(5, note);
			
			
			int res=ps.executeUpdate();
			if(res>0)
			{
				return true;
			}
			
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return false;
	 
	}
	public ResultSet getDoctors()
	{
		query = "select * from doctorsinfo";
		try 
		{
			Class.forName(driver);
			connect=DriverManager.getConnection(url);
			ps=connect.prepareStatement(query);
			rs = ps.executeQuery();
			return rs;
		}
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return rs;
	}
	public ResultSet getDoctorsSlots(int sn)
	{
		query = "select * from slotsinfo where slno=?";
		try 
		{
			Class.forName(driver);
			connect = DriverManager.getConnection(url);
			ps = connect.prepareStatement(query);
			ps.setInt(1,sn);
			rs = ps.executeQuery();
			return rs;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
	public boolean takeAppointment(String fname, String lname, String gender, String dob, String mail, String phone,
			String address, String fvisit, String doctor, String details,String column) {
		
		query = "insert into appointment values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ";
		
		try {
			Class.forName(driver);
			connect = DriverManager.getConnection(url);
			ps = connect.prepareStatement(query);
			ps.setString(1, fname);
			ps.setString(2, lname);
			ps.setString(3, gender);
			ps.setString(4, dob);
			ps.setString(5, mail);
			ps.setString(6, phone);
			ps.setString(7, address);
			ps.setString(8, fvisit);
			ps.setString(9, doctor);
			ps.setString(10, details);
			ps.setString(11, column);
			
			int res = ps.executeUpdate();
			if(res>0)
			{
				return true;
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return false;
	}
	public void changeStatus(String column, int id) 
	{
		query = "update slotsinfo set "+ column +"='Booked' where slno=?";
		
		try {
			Class.forName(driver);
			connect = DriverManager.getConnection(url);
			ps = connect.prepareStatement(query);
			ps.setInt(1, id);
			ps.executeUpdate();
			
		
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
	}
	public ResultSet getAppointments(String mail)
	{
		query="select * from appointment where email=?";
		try 
		{
			Class.forName(driver);
			connect = DriverManager.getConnection(url);
			ps = connect.prepareStatement(query);
			ps.setString(1, mail);
			rs=ps.executeQuery();
			return rs;
		
		} 
		catch (Exception e) 
		{
			
			e.printStackTrace();
		}
		return null;
	}
	
}
