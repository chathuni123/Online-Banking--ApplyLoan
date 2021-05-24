package com.Applicant;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ApplicantInsert
 */
@WebServlet("/ApplicantInsert")
public class ApplicantInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	      
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String birthday = request.getParameter("birthdate");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String amount = request.getParameter("amount");
		String income = request.getParameter("income");
		String loanType = request.getParameter("loantype");
		String accountNo = request.getParameter("accountNo");
		String repayment = request.getParameter("repayment");
		
		boolean isTrue;
		
		isTrue = ApplicantDBUtil.insertApplicant(name , email , birthday , phone , address , amount , income , loanType , accountNo , repayment);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
			
		}
	}

}
