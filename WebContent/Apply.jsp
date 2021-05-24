<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apply for loan</title>

<link rel = "stylesheet" type = "text/css" href = "Applicant.css" />

   <script type = "text/javascript">

  function validation(){
	  
	  var AppName = document.ApplyInfo.name.value;
	  if(AppName==""){
		  window.alert("Please Enter Your Account Name to Apply Loan!!!");
		  document.ApplyInfo.name.focus();
		  return false;
	  }
	  var AppAccount = document.ApplyInfo.accountNo.value;
	  if(AppAccount==""){
		  window.alert("Please Enter Your Account Number to Apply Loan!!!");
		  document.ApplyInfo.accountNo.focus();
		  return false;
	  }
  }

</script>

</head>



<body class = "body">
	
  <jsp:include page="header.jsp"></jsp:include>
 
    <div class = "apply-page">
    
    <h2 class = "h2"> Welcome to Online Apply </h2>
    <div class = "form">
    <form action = "log"  method = "post" class = "apply-form" name = "ApplyInfo">
   
     
      <b><b>Applicant Name</b></b> <input type = "text" name = "name" placeholder="Your Name" required> <br><br>
      <b><b> Account No </b></b> <input type = "text" name = "accountNo" placeholder="Account No" required><br><br>
      
      <button onclick="return validation();">Show me</button>
      
   
   </form>
    </div>
    </div>
</body>
</html>