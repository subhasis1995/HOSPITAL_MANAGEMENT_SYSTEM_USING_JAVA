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
	Statement st=con.createStatement();
	st.executeUpdate("delete  from bloodrequest where mobilenumber='"+mobilenumber+"'");
	response.sendRedirect("requestForBlood.jsp?msg=valid2");
}
catch(Exception e)
{
	response.sendRedirect("requestForBlood.jsp?msg=Invalid");	
}
%>