<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="org.jsp.pharma.PharmacyDao"%>
<html lang="en">
<head>
   <title>Document</title>
   <link rel="stylesheet" href="./DoctorsSlots.css">
</head>
<body>
     
    <%
    	HttpSession s7 = request.getSession();
    	String temp = (String)s7.getAttribute("slno");
    	//System.out.println(temp);
    	int slno = Integer.parseInt(temp);
    	PharmacyDao dao = new PharmacyDao();
   	 	ResultSet rs = dao.getDoctorsSlots(slno);
    	if(rs.isBeforeFirst())
    	{
    		
    %>
    
    	<h1>Doctors Slots</h1>
    <table>
        <tr>
            <th rowspan="2">S.No</th>
            <th rowspan="2">Doctor Name</th>
            <th>slot1</th>
            <th>slot2</th>
            <th>slot3</th>
            <th>slot4</th>
            <th>slot5</th>
            <th>slot6</th>
        </tr>
        <tr>
            <!-- <th></th>          // commented for s.no , rowspan property -->
            <!-- <th></th>          // commented for s.no , rowspan property -->
            <th>10:00-11:00</th>
            <th>11:00-12:00</th>
            <th>12:00-1:00</th>
            <th>2:00-3:00</th>
            <th>3:00-4:00</th>
            <th>4:00-5:00</th>
        </tr>
    
        <%
    		while(rs.next())
    		{
            %>
    				
        <tr>
            <th><%= rs.getInt(1) %></th>
            <th><%= rs.getString(2) %></th>
           	<%
         		for(int i=3; i<=8; i++)
     			{
    			String data = rs.getString(i);
   				if(data.equalsIgnoreCase("Not Booked"))
   				{
     					
         	%>
					<th> 
					<form action="Appointment.jsp"> 
			
					<input type="hidden" name="id" value="<%= rs.getInt(1) %>">
					 <input type="hidden" name="doctor" value="<%=rs.getString(2) %>">
					<input type="hidden" name="slot" value="<%= i-2 %>">
					<input  style="background-color: green;" type="submit" value="Not Booked">  
					</form> 
					</th>
         	<% 				
         					
  				}
  				else
  				{
           					
           	%>
           		<th> <form action="DoctorsSlot.jsp"> <input style="background-color: red;" type="submit" value="Booked"> </form> </th>
           	
        	<% 						
        		    }
        			}
        	
           	%>
            
        </tr>
        
    <% 			
    			
    		}
    
    %>
    
    <% 
    		
    	}
    
    %>
    
      

    </table>
</body>
</html>