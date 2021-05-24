package com.Applicant;

public class Applicant {

	 private int ApplicantID;
	 private String Name;
	 private String Email;
	 private String BirthDate;
	 private String PhoneNo;
	 private String Address;
	 private String DesiredLoanAmount;
	 private String AnnualIncome;
	 private String LoanType;
	 private String AccountNo;
	 private String RepaymentPeriod;
	 
	 
	public Applicant(int applicantID, String name, String email, String birthDate, String phoneNo, String address,
			String desiredLoanAmount, String annualIncome, String loanType, String accountNo, String repaymentPeriod) {
		
		
		this.ApplicantID = applicantID;
		this.Name = name;
		this.Email = email;
		this.BirthDate = birthDate;
		this.PhoneNo = phoneNo;
		this.Address = address;
		this.DesiredLoanAmount = desiredLoanAmount;
		this.AnnualIncome = annualIncome;
		this.LoanType = loanType;
		this.AccountNo = accountNo;
		this.RepaymentPeriod = repaymentPeriod;
	}


	public int getApplicantID() {
		return ApplicantID;
	}


	/*public void setApplicantID(int applicantID) {
		ApplicantID = applicantID;
	}*/


	public String getName() {
		return Name;
	}


	/*public void setName(String name) {
		Name = name;
	}*/


	public String getEmail() {
		return Email;
	}


	/*public void setEmail(String email) {
		Email = email;
	}*/


	public String getBirthDate() {
		return BirthDate;
	}


	/*public void setBirthDate(String birthDate) {
		BirthDate = birthDate;
	}*/


	public String getPhoneNo() {
		return PhoneNo;
	}


	/*public void setPhoneNo(String phoneNo) {
		PhoneNo = phoneNo;
	}*/


	public String getAddress() {
		return Address;
	}


	/*public void setAddress(String address) {
		Address = address;
	}*/


	public String getDesiredLoanAmount() {
		return DesiredLoanAmount;
	}


	/*public void setDesiredLoanAmount(String desiredLoanAmount) {
		DesiredLoanAmount = desiredLoanAmount;
	}*/


	public String getAnnualIncome() {
		return AnnualIncome;
	}


	/*public void setAnnualIncome(String annualIncome) {
		AnnualIncome = annualIncome;
	}*/


	public String getLoanType() {
		return LoanType;
	}


	/*public void setLoanType(String loanType) {
		LoanType = loanType;
	}*/


	public String getAccountNo() {
		return AccountNo;
	}


	/*public void setAccountNo(String accountNo) {
		AccountNo = accountNo;
	}*/


	public String getRepaymentPeriod() {
		return RepaymentPeriod;
	}


	/*public void setRepaymentPeriod(String repaymentPeriod) {
		RepaymentPeriod = repaymentPeriod;
	}*/
	 
	
	 
}
