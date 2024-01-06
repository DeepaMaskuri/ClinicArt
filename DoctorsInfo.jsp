<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="org.jsp.pharma.PharmacyDao"%>
<html lang="en">
<head>
   <title>Document</title>
   <link rel="stylesheet" href="./DoctorsInfo.css">
</head>
<body>
     <div id="container">
    <center>
    
        <h1>Doctor's Informaion</h1>
        
        <%
        	PharmacyDao dao = new PharmacyDao();
        	ResultSet rs = dao.getDoctors();
        	if(rs.isBeforeFirst())
        	{
        	
        %>
        
        
        	<table>
           <tr>
                <th>s.no</th>
                <th>Doctor Name</th>
                <th>years Of Experience</th>
                <th>Ratings</th>
                <th>Hospitals worked</th>
                <th>Qualification</th>
                <th>Photo</th>
                <th>slot booking</th>
           </tr>
        
        
        <% 
        		while(rs.next())
        		{ 
        %>
        			
		        	<tr>
		                <th> <%= rs.getInt(1) %> </th>
		                <th><%= rs.getString(2) %></th>
		                <th> <%= rs.getInt(4) %> </th>
		                <th> <%= rs.getDouble(3) %> </th>
		                <th><%= rs.getString(6) %></th>
		                <th><%= rs.getString(5) %></th>
		                <th>  <img src="<%= rs.getString(7) %>" alt=""> </th>
		                <th> <form action="slots" method="post">
		                	 	<input type="hidden" name="slno" value ="<%= rs.getInt(1)%>">
		                	 	<button type="submit">BOOK</button>
		               		 </form> 
		               	</th>
		           </tr>
		        			
        			
        			
        <%
        		}
        	}
        	else
        	{
        %>
        
        
        			<center>
        				<h2>NO RECORDS FOUND IN THE TABLE...!!! </h2>
        			</center>
        
        <% 
        		
        		
        	}
        %>
        
          
          
           
          
           
        </table>
     </div> 
</body>
</html>