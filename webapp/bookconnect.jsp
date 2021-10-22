<%@ page import="java.sql.*"%>
<%
String fName = request.getParameter("yname");
String phNum = request.getParameter("phnum");
String cid = request.getParameter("cid");
String cod = request.getParameter("cod");
String roomType = request.getParameter("select");
String noGuest = request.getParameter("select1");

try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","maithreyan","");
	PreparedStatement ps = con.prepareStatement("insert into book_table values(?,?,?,?,?,?)");
	ps.setString(1, fName);
	ps.setString(2, phNum);
	ps.setString(3, cid);
	ps.setString(4, cod);
	ps.setString(5, roomType);
	ps.setString(6, noGuest);
	int x = ps.executeUpdate();
	if(x>0){
		out.println("login to book your stay...");
	}else {
		out.println("registration failed...");
	}
	
}catch(Exception e){
	out.println(e);
}

%>
<a href="login.jsp">Login</a><br/><br/>
if you are new user<a href="reg-login.jsp">Register</a>