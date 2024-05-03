<%
String username = request.getParameter("username");
String password = request.getParameter("password");

// Trim the input values to remove leading and trailing whitespaces
username = (username != null) ? username.trim() : "";
password = (password != null) ? password.trim() : "";

// Assuming the correct password is "1234"
if ("admin".equals(username) && "1234".equals(password)) {
    response.sendRedirect("home.jsp");
} else {
    response.sendRedirect("adminLogin.jsp?msg=invalid");
}
%>
