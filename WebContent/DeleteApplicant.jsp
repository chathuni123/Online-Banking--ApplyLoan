<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Applicant</title>
</head>

  <link rel = "stylesheet" type = "text/css" href = "Applicant.css" />

<body class = "body3">

  <jsp:include page="header.jsp"></jsp:include>

    <%
     String id = request.getParameter("id");
     String name = request.getParameter("name");
     String email = request.getParameter("email");
     String birthdate = request.getParameter("birth");
     String phone = request.getParameter("phone");
     String address = request.getParameter("s1");
     String amount = request.getParameter("amount");
     String income = request.getParameter("income");
     String type = request.getParameter("type");
     String no = request.getParameter("no");
     String period = request.getParameter("period");
     
   %>
    
    <div class = "delete-page">
    
    <form action = "delete" method = "post" class = "form3">
      <h1 class = "head1"> Delete Your Account </h1>
      
      <h2 class = "head2"> PERSONAL DETAILS </h2>
      
      Applicant ID
      <input type = "text" name = "appid" value ="<%= id %>" readonly><br><br>
      
      
      Applicant Name
      <input type = "text" name = "appname" value = "<%= name%>" readonly> <br><br>
      
      
      Applicant Email
      <input type = "text" name = "appemail" value = "<%= email %>" readonly><br><br>
      
      
      BirthDate 
      <input type = "date" id = "birthdate" name = "appbirthdate"  min = "1900-01.01T00.00" max ="3000-12-31T00.00" value ="<%= birthdate%>" readonly> <br><br>
      
     
      Phone No
      <input type = "tel" id = "phone" name = "appphone" value ="<%= phone%>" readonly><br><br>
      
      
      Address
      <input type = "text" name = "appaddress" value ="<%= address%>" readonly><br><br>
      
      
      <h2 class ="head2"> LOAN DETAILS </h2>
      
      
      Desired Loan Amount 
      <input type = "text" name = "appamount" value ="<%= amount%>" readonly><br><br>
      
      
      Annual Income
      <input type = "text" name = "appincome" value ="<%= income%>"><br><br>
      
      
      What will the loan be used for ?<br> 
              <input type = "radio" id = "business" name = "apploantype"  value ="<%= type%>" readonly>
              <label for = "business"> Business Launching </label><br>
              <input type = "radio" id = "house" name = "apploantype"  value ="<%= type%>" readonly>
              <label for = "house"> House Launching </label> <br>
              <input type = "radio" id = "improvement" name = "apploantype"  value ="<%= type%>" readonly>
              <label for = "improvement"> Home Improvement </label> <br>
              <input type = "radio" id = "invest" name = "apploantype"  value ="<%= type%>" readonly>
              <label for = "invest"> Investment </label><br>
              <input type = "radio" id = "edu" name = "apploantype"  value ="<%= type%>" readonly>
              <label for = "edu"> Education </label><br>
              <input type = "radio" id = "other" name = "apploantype"  value ="<%= type%>" readonly>
              <label for = "other"> Other </label><br><br>
       
             
       Account No 
       <input type = "text" name = "appaccountNo" value = "<%= no%>" readonly><br><br>
       
       
       Re-payment Period 
       <input type = "date" id = "repayment" name = "apprepayment"  min = "1900-01-01T00.00" max = "3000-12-31T00.00" value ="<%= period%>" readonly><br><br><br>
       
      
      <button>Delete My Data </button>   
   
   </form>
   </div>
    

</body>
</html>