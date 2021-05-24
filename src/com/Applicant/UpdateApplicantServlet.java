package com.Applicant;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateApplicantServlet
 */
@WebServlet("/UpdateApplicantServlet")
public class UpdateApplicantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String applicantId = request.getParameter("appid");
		String name = request.getParameter("appname");
	    String email = request.getParameter("appemail");
	    String birthday = request.getParameter("appbirthdate");
	    String phone = request.getParameter("appphone");
	    String address = request.getParameter("appaddress");
	    String amount=(request.getParameter("appamount"));
	    String income = request.getParameter("appincome");
	    String loanType = request.getParameter("apploantype");
	    String accountNo = request.getParameter("appaccountNo");
	    String repayment = request.getParameter("apprepayment");
	    
	    
	    boolean isTrue;
	    
	    isTrue = ApplicantDBUtil.updateApplicant(applicantId, name, email, birthday, phone, address, amount, income, loanType, accountNo, repayment);

	    
        if(isTrue == true) {
        	
        	List<Applicant> appDetails = ApplicantDBUtil.getApplicantLoanDetails(applicantId);
        	request.setAttribute("appDetails", appDetails);     	
        	
        	
        	RequestDispatcher dis = request.getRequestDispatcher("applicantaccount.jsp");
        	dis.forward(request, response);
        	
        }
        else
        {
        	
        	List<Applicant> appDetails = ApplicantDBUtil.getApplicantLoanDetails(applicantId);
        	request.setAttribute("appDetails", appDetails);     
        	
        	
        	RequestDispatcher dis2 = request.getRequestDispatcher("applicantaccount.jsp");
        	dis2.forward(request, response);
        	
        }
		
	}

}
