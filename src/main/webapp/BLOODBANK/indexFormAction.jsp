<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Project.ConnectionProvider"%>

<%
String name = request.getParameter("name");
String mobilenumber = request.getParameter("mobilenumber");
String email = request.getParameter("email");
String bloodgroup = request.getParameter("bloodgroup");
String status = "pending";

try {
    Connection con = ConnectionProvider.getCon();
    
    // Use a prepared statement with parameterized query to prevent SQL injection
    PreparedStatement ps = con.prepareStatement("insert into bloodrequest (name, mobilenumber, email, bloodgroup, status) values (?, ?, ?, ?, ?)");
    ps.setString(1, name);
    ps.setString(2, mobilenumber);
    ps.setString(3, email);
    ps.setString(4, bloodgroup);
    ps.setString(5, status);

    int rowsAffected = ps.executeUpdate();

    if (rowsAffected > 0) {
        // Data submitted successfully
        response.sendRedirect("index.jsp?msg=valid");
    } else {
        // No rows affected, indicating an issue with the data
        response.sendRedirect("index.jsp?msg=invalid");
    }
} catch (Exception e) {
    // Print the exception details for debugging purposes
    e.printStackTrace();
    
    // Exception occurred, redirect with invalid message
    response.sendRedirect("index.jsp?msg=invalid");
}
%>
