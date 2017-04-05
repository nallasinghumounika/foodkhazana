<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="links.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-inverse  navbar-fixed-top">
  <div class="container">
   
    <ul class="nav navbar-nav">

      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><img class="img-circle"src="resources/images/users/${userimage}.jpg" height="30" width="30"/>Welcome ${username}<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqEditProfilePage?uid=${userid}">Edit Profile</a></li>
          <li><a href="#">Change Password</a></li>
          <li><a href="home">Logout</a></li>
        </ul>
      </li>  
     
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Products<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqDisplayProductsUser">Display All products</a></li>
          <li><a href="#">Display wishlist</a></li>          
        </ul>
      </li>  
     
        <li><a href="#">Orders</a></li>
     
        <li><a href="#"> <span class="glyphicon glyphicon-shopping-cart"></span>  0</a></li>
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#">About Us</a></li>
      <li><a href="#">Contact Us</a></li>
    </ul>
  </div>
</nav>
<br><br><br><br>
<div class="container" style="background-color:transparent; opacity:0.4; color:green">
 
	<form:form  class="form-horizontal" commandName="userObject" method="POST" action="reqEditPrfileToDb">


   
  

	<div class="col-sm-3" style="background-color:transparent;color:yellow; vertical-align:baseline">Customer Name </div>
			    <form:hidden path="userid"/>
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

</body>
</html>