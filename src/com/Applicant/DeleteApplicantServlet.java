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
 * Servlet implementation class DeleteApplicantServlet
 */
@WebServlet("/DeleteApplicantServlet")
public class DeleteApplicantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		String applicantId = request.getParameter("appid");
		
		boolean isTrue;
		
		isTrue = ApplicantDBUtil.deleteApplicant(applicantId);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("ApplicantInsert.jsp");
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
