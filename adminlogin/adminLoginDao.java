package com.adminlogin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class adminLoginDao {
	
	String sql = "select * from admin where adminId=? and password=?";
	String url = "jdbc:mysql://localhost:3306/hotel";
	String username = "maithreyan";
	String password = "";
	public boolean check(String uname , String pass) throws SQLException {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, uname);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();
			
				if (rs.next()) {
					return true;
				}
			}
			
		 catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		return false;
	}
}
