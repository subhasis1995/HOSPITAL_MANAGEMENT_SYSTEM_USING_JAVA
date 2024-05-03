<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%
String mobilenumber=request.getParameter("mobilenumber");
try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("UPDATE bloodrequest SET status='completed' where mobilenumber=?");
	ps.setString(1,mobilenumber);
	ps.executeUpdate();
	response.sendRedirect("requestForBlood.jsp?msg=valid");
}
catch(Exception e)
{
	response.sendRedirect("requestForBlood.jsp?msg=Invalid");	
}
%>