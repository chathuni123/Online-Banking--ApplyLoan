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
 * Servlet implementation class ApplyServlet
 */
@WebServlet("/ApplyServlet")
public class ApplyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String accountNo = request.getParameter("accountNo");
		
		try {
			
		List<Applicant> appDetails = ApplicantDBUtil.validate(name, accountNo);
		
		request.setAttribute("appDetails" , appDetails);
		
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		RequestDispatcher dis = request.getRequestDispatcher("applicantaccount.jsp");
		dis.forward(request,response);
		
		
	}

}




























































































































