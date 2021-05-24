<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Applicant</title>

 <link rel = "stylesheet" type = "text/css" href = "Applicant.css" />
 
  <script type="text/javascript" >
  
     function validate(){
    	
    	 var name=document.forms["UpdateInfo"]["appname"];
    	 if(name.value==""){
    		 window.alert("Please enter your name!!");
    		 document.UpdateInfo.name.focus();
    		 return false;
    	 }
    	 var email=document.forms["UpdateInfo"]["appemail"];
    	 if(email.value==""){
    		 window.alert("Please enter your email!!");
    		 document.UpdateInfo.email.focus();
    		 return false;
    	 }
    	 var email=document.UpdateInfo.appemail.value;  
    	 var atposition=email.indexOf("@");  
    	 var dotposition=email.lastIndexOf(".");  
    	 if (atposition<1 || dotposition<atposition+2 || dotposition+2>=email.length){  
    	   alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
    	   return false;  
    	 }  
    	 var birthdate=document.forms["UpdateInfo"]["appbirthdate"];
    	 if(birthdate.value==""){
    		 window.alert("Please enter your birthdate!!");
    		 document.UpdateInfo.birthdate.focus();
    		 return false;
    	 }
    	 var phone=document.forms["UpdateInfo"]["appphone"];
    	 if(phone.value==""){
    		 window.alert("Please enter your phone number!!");
    		 document.UpdateInfo.phone.focus();
    		 return false;
    	 }
    	 /*var phone = /^\d{10}$/;
    	 if((GetInfo.value.match(phone))
    	        {
    	      return true;
    	        }
    	      else
    	        {
    	        window.alert("Your phone number is invalid , please enter a valid phone number!!!");
    	        document.GetInfo.phone.focus();
    	        return false;
    	 }*/
    	 /*if(isNaN(phone))
    	 {
    	 alert("Enter the valid Mobile Number(Like : 9566137117)");
    	 document.UpdateInfo.phone.focus();
    	 return false;
    	 }*/
    	 var address=document.forms["UpdateInfo"]["appaddress"];
    	 if(address.value==""){
    		 window.alert("Please enter your address!!");
    		 document.UpdateInfo.address.focus();
    		 return false;
    	 }
    	 var amount=document.forms["UpdateInfo"]["appamount"];
    	 if(amount.value==""){
    		 window.alert("Please enter your loan amount!!");
    		 document.UpdateInfo.amount.focus();
    		 return false;
    	 }
    	 var income=document.forms["UpdateInfo"]["appincome"];
        	 if(income.value==""){
        		 window.alert("Please enter your annual income!!");
        		 document.UpdateInfo.income.focus();
        		 return false;
        }
        
        var account=document.forms["UpdateInfo"]["appaccountNo"];
        	 if(account.value==""){
        		 window.alert("Please enter your account number!!");
        		 document.UpdateInfo.account.focus();
                 return false;
        } 
        var repayment=document.forms["UpdateInfo"]["apprepayment"];
        	 if(repayment.value==""){
        		 window.alert("Please enter your repqyment period!!");
        		 document.UpdateInfo.repqyment.focus();
                 return false;
        } 	 
        	 	 
     }
  
  </script>
 
  
 

</head>

   

<body class = "body5">

  <jsp:include page="header.jsp"></jsp:include>

   <div class = "update-page">

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

   

   
   
   
   <h1 class = "hea1"> Update Your Account</h1>
   
   <p class = "msg"> Please provide your information below to complete application . <br> All fields are required unless otherwise noted. <br>YOU CAN EDIT YOUR DETAILS</p>
      
   <div class = "form4">
   
   <form action = "update" method = "post" class = "update-form" name ="UpdateInfo">
     
      
      <h2 class = "hea2"> PERSONAL DETAILS</h2>
      
      Applicant ID
      <input type = "text" name = "appid" value ="<%= id %>" readonly><br><br>
      
      
      Applicant Name
      <input type = "text" name = "appname" value = "<%= name%>" required> <br><br>
      
      
      Applicant Email
      <input type = "text" name = "appemail" value = "<%= email %>" required><br><br>
      
      
      BirthDate 
      <input type = "date" id = "birthdate" name = "appbirthdate"  min = "1900-01.01T00.00" max ="3000-12-31T00.00" value ="<%= birthdate%>" required> <br><br>
      
     
      Phone No
      <input type = "tel" id = "phone" name = "appphone" value ="<%= phone%>" required><br><br>
      
      
      Address
      <input type = "text" name = "appaddress" value ="<%= address%>" required><br><br>
      
      
      <h2 class = "hea2"> LOAN DETAILS </h2>
      
      
      Desired Loan Amount 
      <input type = "text" name = "appamount" value ="<%= amount%>" required><br><br>
      
      
      Annual Income
      <input type = "text" name = "appincome" value ="<%= income%>" required><br><br>
      
      
      What will the loan be used for ?<br> 
              <input type = "radio" id = "business" name = "apploantype"  value = "business-launching" value ="<%= type%>" >
              <label for = "business"> Business Launching </label><br>
              <input type = "radio" id = "house" name = "apploantype" value = "house-launching" value ="<%= type%>">
              <label for = "house"> House Launching </label> <br>
              <input type = "radio" id = "improvement" name = "apploantype" value = "home-improvement" value ="<%= type%>" >
              <label for = "improvement"> Home Improvement </label> <br>
              <input type = "radio" id = "invest" name = "apploantype" value = "investment" value ="<%= type%>" >
              <label for = "invest"> Investment </label><br>
              <input type = "radio" id = "edu" name = "apploantype" value = "education" value ="<%= type%>" >
              <label for = "edu"> Education </label><br>
              <input type = "radio" id = "other" name = "apploantype" value = "other" value ="<%= type%>" >
              <label for = "other"> Other </label><br><br>
       
             
       Account No 
       <input type = "text" name = "appaccountNo" value = "<%= no%>" required><br><br>
       
       
       Re-payment Period 
       <input type = "date" id = "repayment" name = "apprepayment" min = "1900-01-01T00.00" max = "3000-12-31T00.00"  value ="<%= period%>" required><br><br><br>
       
      <button onclick="return validate();">Update My Data</button>
       
   
   </form>
   </div>
   </div>


</body>
</html>