<%@page import="java.sql.ResultSet"%>
<%@page import="org.jsp.pharma.PharmacyDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./DisplayAppointments.css">
</head>
<body>
     <h1 style='color:maroon;'><u>APPOINTMENT DETAILS</u></h1>
     <hr><hr>
     <%
       PharmacyDao dao = new PharmacyDao();
       String mail = (String)request.getSession().getAttribute("usermail");
       ResultSet rs = dao.getAppointments(mail);
       if(rs.isBeforeFirst())
       {
   	%>
   	    <table>
   	       <tr>
   	          <th>Name</th>
   	          <th>DOB</th>
   	          <th>Email</th>
   	          <th>Mobile</th>
   	          <th>Adress</th>
   	          <th>Doctor</th>
   	          <th>purpose</th>
   	          <th>slot</th>
   	       </tr>
   	       <%
   	         while(rs.next())
   	         {
   	        %>
   	        <tr>
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(4)%></td>
                <td><%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
                <td><%=rs.getString(7)%></td>
                <td><%=rs.getString(9)%></td>
                <td><%=rs.getString(10)%></td>
                <td><%=rs.getString(11)%></td>	        
   	        </tr>
   	        <%
   	         }
   	        
       }
       
     %>
      </table>
</body>
</html>