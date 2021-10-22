<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.* " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String Uname=request.getParameter("username");
session.putValue("username",Uname);
String pwd=request.getParameter("pass");

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","maithreyan","");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("SELECT * FROM registration WHERE username='" + Uname + "'");
if(rs.next())
{
if(rs.getString(6).equals(pwd))
{
out.println("Hello "+ Uname +"<br>"+"Your login time "+ java.util.Calendar.getInstance().getTime());

}
else
out.println("Invalid user");

}


%>



</table>
<div>
<a href="Home.html">Home</a>
</div>
</body>
</html>