<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Applicant</title>

<link rel = "stylesheet" type = "text/css" href = "Applicant.css" />


  <script type="text/javascript" >
  
     function validate(){
    	
    	 var name=document.forms["GetInfo"]["name"];
    	 if(name.value==""){
    		 window.alert("Please enter your name!!");
    		 document.GetInfo.name.focus();
    		 return false;
    	 }
    	 var email=document.forms["GetInfo"]["email"];
    	 if(email.value==""){
    		 window.alert("Please enter your email!!");
    		 document.GetInfo.email.focus();
    		 return false;
    	 }
    	 var email=document.GetInfo.email.value;  
    	 var atposition=email.indexOf("@");  
    	 var dotposition=email.lastIndexOf(".");  
    	 if (atposition<1 || dotposition<atposition+2 || dotposition+2>=email.length){  
    	   alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
    	   return false;  
    	 }  
    	 var birthdate=document.forms["GetInfo"]["birthdate"];
    	 if(birthdate.value==""){
    		 window.alert("Please enter your birthdate!!");
    		 document.GetInfo.birthdate.focus();
    		 return false;
    	 }
    	 var phone=document.forms["GetInfo"]["phone"];
    	 if(phone.value==""){
    		 window.alert("Please enter your phone number!!");
    		 document.GetInfo.phone.focus();
    		 return false;
    	 }
    	 /*var phone = /^\d{10}$/;
    	 if((value.match(phone))
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
    	 alert("Enter the valid Mobile Number(Like : 0771234567)");
    	 document.GetInfo.phone.focus();
    	 return false;
    	 }*/
    	 /*var phoneNum = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/; 
         if(phone.value.match(phoneNum)) {
             return true;
         }
         else {
             document.getElementById("phone").className = document.getElementById("phone").className + " error";
             return false;
    	 var address=document.forms["GetInfo"]["address"];
    	 if(address.value==""){
    		 window.alert("Please enter your address!!");
    		 document.GetInfo.address.focus();
    		 return false;
    	 }*/
    	 var amount=document.forms["GetInfo"]["amount"];
    	 if(amount.value==""){
    		 window.alert("Please enter your loan amount!!");
    		 document.GetInfo.amount.focus();
    		 return false;
    	 }
    	 var income=document.forms["GetInfo"]["income"];
        	 if(income.value==""){
        		 window.alert("Please enter your annual income!!");
        		 document.GetInfo.income.focus();
        		 return false;
        }
        var type=document.forms["GetInfo"]["loantype"];
        	 if(type.value==""){
        		 window.alert("Please enter your loan type!!");
        		 document.GetInfo.type.focus();
                 return false;
        } 
        var account=document.forms["GetInfo"]["accountNo"];
        	 if(account.value==""){
        		 window.alert("Please enter your account number!!");
        		 document.GetInfo.account.focus();
                 return false;
        } 
        var repayment=document.forms["GetInfo"]["repayment"];
        	 if(repayment.value==""){
        		 window.alert("Please enter your repqyment period!!");
        		 document.GetInfo.repqyment.focus();
                 return false;
        } 	 
        	 	 
     }
  
  </script>

</head>



<body class="insert">

  <jsp:include page="header.jsp"></jsp:include>

   <div class = "insert-page">

   
      <h1 class = "h1"> Online Apply</h1>
      <p class = "message"><b><b> Please provide your information below to complete application </b></b>. <b><b>All fields are required unless otherwise noted.</b></b></p>
      
      <div class = "form2">
      
      
      <form action = "insert" method = "post" class = "insert-form" name = "GetInfo" >
      
      <h3 class = "h3"> PERSONAL DETAILS </h3>
      
      Applicant Name <input type = "text" name = "name" placeholder="Name" required> <br><br>
      
      Applicant Email <input type = "email" name = "email" placeholder="someone@example.com(must be valid email)" size = "40"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,63}$" required><br><br>
      
      BirthDate  <input type = "date" id = "birthdate" name = "birthdate" value = "2020-04-28" min = "1900-01.01T00.00" max ="3000-12-31T00.00" required> <br><br>
      
      Phone No <input type = "tel" id = "phone" name = "phone" placeholder="PhoneNo" required><br><br>
      
      Address  <input type = "text" name = "address" placeholder="Address" required><br><br>
      
      <h3 class="h3"> LOAN DETAILS </h3>
      
      Desired Loan Amount <input type = "text" name = "amount" placeholder="Amount" required><br><br>
      
      Annual Income  <input type = "text" name = "income" placeholder="Income" required><br><br>
      
      What will the loan be used for ? <br> 
              <input type = "radio" id = "business" name = "loantype" value = "business-launching" required>
              <label for = "business"> Business Launching </label><br>
              <input type = "radio" id = "house" name = "loantype" value = "house-launching" required>
              <label for = "house"> House Launching </label> <br>
              <input type = "radio" id = "improvement" name = "loantype" value = "home-improvement" required>
              <label for = "improvement"> Home Improvement </label> <br>
              <input type = "radio" id = "invest" name = "loantype" value = "investment" required>
              <label for = "invest"> Investment </label><br>
              <input type = "radio" id = "edu" name = "loantype" value = "education" required>
              <label for = "edu"> Education </label><br>
              <input type = "radio" id = "other" name = "loantype" value = "other" required>
              <label for = "other"> Other </label><br><br><br><br>
              
      
       Account No <input type = "text" name = "accountNo" placeholder="Account No" required><br><br>
            
       Re-payment Period <input type = "date" id = "payment-period" name = "repayment" value = "2020-04-28" min = "1900-01-01T00.00" max = "3000-12-31T00.00" required> <br><br>
       
      <button onclick ="return validate();"> APPLY FOR LOAN</button>
   
   </form>
   </div>
   </div>

</body>
</html>