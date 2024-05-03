<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@include file="header.html"%>
<html>
<head>
<style>
#customers{
	font-family: "Trebuchet MS", Arial , Helvetica , sans-serif;
	border-collapse: collapse;
	width: 95%; 
}

#customers td, #customers th{
	border : 1px solid #add;
	padding : 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#custmoers tr:hover {background-color: #ddd;}

#customers tr:{
		padding-top: 12px;
		padding-bottom: 12px;
		text-align: left;
		background-color: #4CAF50;
		color: white;
}
</style>
</head>
<body>
<br>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
	%>
	<center><font color="green" size="5">Successfully Done</font></center>
	<%} %>
<%
if("valid2".equals(msg))
{
	%>
	<center><font color="green" size="5">Successfully Delete</font></center>
	<%} %>
<%
if("Invalid".equals(msg))
{
	%>
	<center><font color="red" size="5">Something Went Wrong! Try Again!</font></center>
	<%} %>
<center>
<table id="customers">
<tr>
<th>Id</th>
<th>Name</th>
<th>Mobile Number</th>
<th>Email</th>
<th>Blood Group</th>
<th>Done</th>
<th>Delete</th>
</tr>
<tr>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from bloodrequest where status='pending'");
	while(rs.next())
	{
%>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><a href="requestForBloodDone.jsp?mobilenumber=<%=rs.getString(3) %>">Done</a></td>
<td><a href="requestForBloodDelete.jsp?mobilenumber=<%=rs.getString(3) %>">Delete</a></td>
</tr>
<%
	}
}
catch (Exception e)
{
	System.out.println(e);
}
%>
</table>

</center>
</body>
</html>