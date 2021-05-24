<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

  <link rel = "stylesheet" type = "text/css" href = "Applicant.css" />

</head>

<body class= "body6">

  <jsp:include page="header.jsp"></jsp:include>
    
   <div class = "account-page">

   <div class = "form5">
   
   <form class = "glass">
  
   <table>
  
   
  
    <c:forEach var="app" items ="${appDetails}">
    
     <c:set var = "id"  value = "${app.applicantID}"/>
     <c:set var = "name"  value = "${app.name}"/>
     <c:set var = "email"  value = "${app.email}"/>
     <c:set var = "birthday"  value = "${app.birthDate}"/>
     <c:set var = "phone"  value = "${app.phoneNo}"/>
     <c:set var = "address"  value = "${app.address}"/>
     <c:set var = "amount"  value = "${app.desiredLoanAmount}"/>
     <c:set var = "income"  value = "${app.annualIncome}"/>
     <c:set var = "type"  value = "${app.loanType}"/>
     <c:set var = "accNo"  value = "${app.accountNo}"/>
     <c:set var = "period"  value = "${app.repaymentPeriod}"/>
     
    <h1> See Your Details</h1>
    
    <tr>
      <td> Applicant ID                 : </td>
       <td>${app.applicantID}</td>
    </tr>
    <tr>
      <td> Applicant Name               : </td>   
      <td>${app.name}</td>
    </tr>
    <tr>
       <td> Applicant Email             : </td>  
       <td>${app.email}</td>
    </tr> 
    <tr>
       <td> Applicant BirthDate         : </td>  
       <td>${app.birthDate}</td>
    </tr>
    <tr>
       <td> Applicant ContactNo         : </td>   
       <td>${app.phoneNo}</td>
    </tr>
    <tr>
       <td> Applicant Address           : </td>   
       <td>${app.address}</td>
    </tr>
    <tr>
       <td> Desired Loan Amount         : </td>   
       <td>${app.desiredLoanAmount}</td>
    </tr>
    <tr>
       <td> Annual Income               : </td>   
       <td>${app.annualIncome}</td>
    </tr>
    <tr>
       <td> Loan Type                   : </td>   
       <td>${app.loanType}</td>
    </tr>
    <tr>
       <td> Account No                  : </td>    
       <td>${app.accountNo}</td>
    </tr>
    <tr>
       <td> Re-payment Period           : </td>   
       <td>${app.repaymentPeriod}</td>  
    </tr>
    
    
    </c:forEach>
   </table>
   
   <c:url value = "UpdateApplicant.jsp" var = "appupdate">
       <c:param name="id" value = "${id }"/>
       <c:param name="name" value = "${name }"/>
       <c:param name="email" value = "${email}"/>
       <c:param name="birth" value = "${birthday }"/>
       <c:param name="phone" value = "${ phone}"/>
       <c:param name="s1" value = "${address }"/>
       <c:param name="amount" value = "${ amount}"/>
       <c:param name="income" value = "${income }"/>
       <c:param name="type" value = "${type}"/>
       <c:param name="no" value = "${accNo}"/>
       <c:param name="period" value = "${period}"/>
       
      
   
   </c:url>
   
   <a href = "${appupdate}" >
   <br>
   <input type = "button" name = "update" value = "Edit My data">
   </a>
   <br><br>
   
  <c:url value = "DeleteApplicant.jsp" var = "appdelete">
       <c:param name = "id" value = "${id}"/>
       <c:param name = "name" value = "${name}"/>
       <c:param name="email" value = "${email}"/>
       <c:param name="birth" value = "${birthday}"/>
       <c:param name="phone" value = "${ phone}"/>
       <c:param name="s1" value = "${address }"/>
       <c:param name="amount" value = "${ amount}"/>
       <c:param name="income" value = "${income }"/>
       <c:param name="type" value = "${type}"/>
       <c:param name="no" value = "${accNo}"/>
       <c:param name="period" value = "${period}"/>
       
  
  </c:url>
   <a href = "${appdelete}" >
   <input type = "button" name = "delete" value = "Exit From Account ">
   </a>
   
   </form>
   </div>
   </div>
   
   
</body>
</html>