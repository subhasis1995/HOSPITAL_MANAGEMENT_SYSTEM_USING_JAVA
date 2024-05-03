<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%
String id=request.getParameter("id");
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("delete from donor where id='"+id+"'");
	response.sendRedirect("editDeleteList.jsp?msg=deleted");
}
catch(Exception e)
{
	response.sendRedirect("editDeleteList.jsp?msg=invalid ");	
}
%>