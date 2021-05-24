package com.Applicant;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String url = "jdbc:mysql://localhost:3306/apply_loan";
	private static String username = "root";
	private static String password = "chathuni1234";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(url , username , password);
			
		}
		catch(Exception e) {
			System.out.println("Your database connection is not success!!!");
		}
		
		return con;
		
	}

}



