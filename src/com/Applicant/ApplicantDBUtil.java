package com.Applicant;

import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ApplicantDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stm = null;
	private static ResultSet result = null;


	// validate customer
	public static List<Applicant> validate(String name , String accountNo){
		
		ArrayList<Applicant>app = new ArrayList<>();
		
		/*String url = "jdbc:mysql://localhost:3306/apply_loan";
		String username = "root";
		String password = "chathuni1234";*/
		
		
		try {
			
			/*Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url , username , password);
		    Statement stm  = con.createStatement(); */
			con = DBConnect.getConnection();
			stm = con.createStatement();
			
		    String sql = "select * from applicant where Name = '"+name+"' and AccountNo = '"+accountNo+"'";
		    result = stm.executeQuery(sql);
		    
		    if(result.next()) {
		    	
		    	int ApplicantID = result.getInt(1);
		    	String Name = result.getString(2);
		    	String Email = result.getString(3);
		    	String BirthDate = result.getString(4);
		    	String PhoneNo = result.getString(5);
		    	String Address = result.getString(6);
		    	String DesiredLoanAmount = result.getString(7);
		    	String AnnualIncome = result.getString(8);
		    	String LoanType = result.getString(9);
		    	String AccountNo = result.getString(10);
		    	String RepaymentPeriod = result.getString(11);
		    	
		    	Applicant a = new Applicant(ApplicantID , Name , Email , BirthDate , PhoneNo , Address , DesiredLoanAmount , AnnualIncome , LoanType , AccountNo , RepaymentPeriod);
		    	app.add(a);
		    	
		    	
		    }
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		return app;
		
		
	}
	
	
	// INSERT APPLICANT
	
	public static boolean insertApplicant(String name , String email , String birthday , String phone , String address , String amount , String income , String loanType , String accountNo , String repayment) {
	
	boolean isSuccess = false;
	
	/*String url = "jdbc:mysql://localhost:3306/apply_loan";
	String username = "root";
	String password = "chathuni1234";*/
	
	try {
		
		/*Class.forName("com.mysql.jdbc.Driver");
		
		Connection con = DriverManager.getConnection(url , username , password);
	    Statement stm  = con.createStatement(); */
		con = DBConnect.getConnection();
		stm = con.createStatement();
		
		String sql = "insert into applicant values(0 , '"+name+"' , '"+email+"' , '"+birthday+"', '"+phone+"' , '"+address+"' , '"+amount+"' , '"+income+"' , '"+loanType+"' , '"+accountNo+"' , '"+repayment+"')";
		
		int result = stm.executeUpdate(sql);
		
		if(result > 0) {
			
			isSuccess = true;
		}
		else
		{
			isSuccess = false;
		}
		
	}catch(Exception e) {
		
		e.printStackTrace();
	}
	
	
	return isSuccess;
	}

	
	//UPDATE APPLICANT
	
	public static boolean updateApplicant(String applicantId , String name , String email , String birthday , String phone , String address , String amount , String income , String loanType , String accountNo , String repayment) {
		
		try {
			
			con = DBConnect.getConnection();
			stm = con.createStatement();
			
			String sql = "update applicant set Name ='"+name+"' , Email ='"+email+"' , BirthDate ='"+birthday+"' , PhoneNo ='"+phone+"' , Address ='"+address+"' , DesiredLoanAmount ='"+amount+"' , AnnualIncome ='"+income+"' , LoanType ='"+loanType+"' , AccountNo ='"+accountNo+"' , RepaymentPeriod ='"+repayment+"'" +"where ApplicantID ='"+applicantId+"'";
			int result = stm.executeUpdate(sql);
			
			
			if(result > 0) {
				
				isSuccess = true;
			}
			else
			{
				isSuccess = false;
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		
		return isSuccess;
		
	}
	
	
	//RETRIEVE APPLICANT
	
	public static List<Applicant> getApplicantLoanDetails(String applicantId){
		
		int convertedID = Integer.parseInt(applicantId);
		
		ArrayList<Applicant> app = new ArrayList<>();
		
		
		try {
			
			con = DBConnect.getConnection();
			stm = con.createStatement();
			
			String sql = "select * from applicant where ApplicantID = '"+convertedID+"'";
			result = stm.executeQuery(sql);
			
			while(result.next()) {
				
				int ApplicantID = result.getInt(1);
				String Name = result.getString(2);
				String Email = result.getString(3);
				String BirthDate = result.getString(4);
				String PhoneNo = result.getString(5);
				String Address = result.getString(6);
				String DesiredLoanAmount = result.getString(7);
				String AnnualIncome = result.getString(8);
				String LoanType = result.getString(9);
				String AccountNo = result.getString(10);
				String RepaymentPeriod = result.getString(11);
				
				Applicant a = new Applicant(ApplicantID , Name, Email, BirthDate , PhoneNo , Address , DesiredLoanAmount , AnnualIncome , LoanType , AccountNo , RepaymentPeriod);
				app.add(a);
				
				
			}
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		return app;
	}
	
	
	// DELETE APPLICANT
	
	public static boolean deleteApplicant(String applicantId) {
		
		int conID = Integer.parseInt(applicantId);
		
		try {
			
                con = DBConnect.getConnection();
                stm = con.createStatement();
                
                String sql = "delete from applicant where ApplicantID = '"+conID+"'";
                int res = stm.executeUpdate(sql);
                
                if(res > 0) {
                	
                	isSuccess = true;
                }
                else
                {
                	isSuccess = false;
                }
			
			
		} catch(Exception e) {
	
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
}
