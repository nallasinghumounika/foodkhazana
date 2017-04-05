<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="links.jsp" %>

<link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
      
      
      
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
	body{
		background-size:contain;
		background-repeat:no-repeat;
		background-attachment: fixed;
		background-size:100% 100%;
	}

video#bgvid { 
    position: fixed;
    top: 50%;
    left: 50%;
    min-width: 100%;
    min-height: 100%;
    width: auto;
    height: auto;
    z-index: -100;
    -ms-transform: translateX(-50%) translateY(-50%);
    -moz-transform: translateX(-50%) translateY(-50%);
    -webkit-transform: translateX(-50%) translateY(-50%);
    transform: translateX(-50%) translateY(-50%);
    background: url(clothing.jpg) no-repeat;
    background-size: cover; 
    
}
.c1{
color:aqua
}

</style>

<script>
$(function(){
	$('input[name=dateofBirth]').datepicker({
		format:'YYYY-mm-dd'
	});
});
</script>
</head>

<body background="resources/images/mu.jpg">
<div class="col-sm-4" align="center">
<video autoplay loop muted poster="b.jpg" id="bgvid">
    <source src="resources/images/vedios/s..mp4" type="video/mp4">
    </video>
    </div>
<nav class="navbar navbar-inverse navbar-fixed-top">
   <div class="container">
     
     <ul class="nav navbar-nav">
     
     <li><a href="#">Welcome Admin..</a></li>
     <li><a href="home"> <span class="glyphicon glyphicon-home" style="color:white"></span>Home</a></li>
      <li><a href="#">About Us</a></li>
       <li><a href="#"><span class="glyphicon glyphicon-earphone" style="color:white"></span>Contact Us</a></li>
       </ul>
       
       
        <ul class="nav navbar-nav  navbar-right">
  <li><a href="reqspringloginpage"><span class="glyphicon glyphicon-user"></span>SpringLogin</a></li>
   <li><a href="reqForSignupPage"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
   </ul>
   
   </div>
   </nav>
   <br><br>
   <h2 align="center">Enter Your Details</h2>
  <div class="col-sm-4" style="background:transparent; border:none">
</div>
  <div class="container-Wrapper">
  <div class="container">

 <div class="container col-sm-6" align="center" style="background: rgba(0,0,50,0.5)">
<!--  <img src="resources/images/d.jpg" width="200" height="120">-->
<form:form  commandName="customerObject" method="POST" action="reqSendSignupDataToDB" encType="multipart/form-data">

<!-- <div class="container"> -->
	<div class="col-sm-3" style="background-color:transparent;color:yellow; vertical-align:baseline">Customer Name </div>
			    <form:hidden path="customerid"/>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="custname" class="form-control" placeholder="Enter Customer Name" style="background-color:transparent;color:yellow"/>
				  </div>
			
			      <div class="col-sm-3" style="background-color:transparent;color:yellow">Email ID </div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="custemailid" class="form-control" placeholder="Enter Email ID" style="background-color:transparent;color:yellow"/>
				  </div>		
				
			      <div class="col-sm-3" style="background-color:transparent;color:yellow">Mobile No. </div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="custmobileno" class="form-control" placeholder="Enter Mobile No." style="background-color:transparent;color:yellow"/>
				  </div>		
				
			      			
					<br> Authentication details <br>
			      <div class="col-sm-3" style="background-color:transparent;color:yellow">Password</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:password path="userdetails1.password" class="form-control" placeholder="Enter Password" style="background-color:transparent;color:yellow"/>
				  </div>	
				  	
				  	 <div class="col-sm-3" style="background-color:transparent;color:yellow">Image</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input type="file" path="userdetails1.imagefile" class="form-control" style="background-color:transparent;color:yellow"/>
				  </div>		
				  			
				  			
				  			
						<br> Address <br>
			      <div class="col-sm-3" style="background-color:transparent;color:yellow">Hose No.</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.houseno" class="form-control" placeholder="Enter House No." style="background-color:transparent;color:yellow"/>
				  </div>				
			
			  		 <div class="col-sm-3" style="background-color:transparent;color:yellow">Street</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.street" class="form-control" placeholder="Enter Street" style="background-color:transparent;color:yellow"/>
				  </div>	
				  
			      <div class="col-sm-3" style="background-color:transparent;color:yellow">Area</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.area" class="form-control" placeholder="Enter Area" style="background-color:transparent;color:yellow"/>
				  </div>				
		
		     	<div class="col-sm-3" style="background-color:transparent;color:yellow">City</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.city" class="form-control" placeholder="Enter City" style="background-color:transparent;color:yellow"/>
				  </div>
				  
		     	<div class="col-sm-3" style="background-color:transparent;color:yellow">State</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.state" class="form-control" placeholder="Enter State" style="background-color:transparent;color:yellow"/>
				  </div>
				  
	     		<div class="col-sm-3" style="background-color:transparent;color:yellow">Country</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.country" class="form-control" placeholder="Enter Country" style="background-color:transparent;color:yellow"/>
				  </div>		
			
	     		<div class="col-sm-3" style="background-color:transparent;color:yellow">Pincode</div>
			      <div class="col-sm-8" style="background-color:transparent">
				       <form:input path="shippingAddress.pincode" class="form-control" placeholder="Enter Pincode" style="background-color:transparent;color:yellow"/>
				  </div>
				  
		
				<br> 
				<form:button class="btn btn-primary active">SignUp</form:button>
	
			</form:form>        
</div>
</div>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>

