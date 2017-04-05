<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../pages/links.jsp" %>
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


</style>
</head>
<body>
<video autoplay loop muted poster="b.jpg" id="bgvid">
    <source src="resources/images/vedios/s1.mp4" type="video/mp4">
    </video>
<nav class="navbar navbar-inverse  navbar-fixed-top">
  <div class="container">
   
    <ul class="nav navbar-nav">

<%-- <c:url value="/resources/images/products/${ps.productid}.jpg" var="url"></c:url>
		 <img id="boxshadow" src="${url}" style="width:220px; height:200px;" class="img-rounded"/>
 --%>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">
      <c:url value="/resources/images/users/${userimage}.jpg" var="m"></c:url>
      <img class="img-circle" src="${m}" height="30" width="30"/>Welcome ${username}<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqEditProfilePage?uid=${loginuserid}">Edit Profile</a></li>
          <li><a href="#">Change Password</a></li>
          <li><a href="j_spring_security_logout">Logout</a></li>
        </ul>
      </li>  
     
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Products<span class="caret"></span></a>
	     <ul class="dropdown-menu">
	     <c:url value="/reqDisplayProductsUser" var="mr"></c:url>
          <li><a href="${mr}">Display All products</a></li>
          <li><a href="#">Display wishlist</a></li>          
        </ul>
      </li>  
     
        <li><a href="#">Orders</a></li>
     <c:url value="/reqDisplayCart" var="url"></c:url>
        <li><a href="${url}"> <span class="glyphicon glyphicon-shopping-cart"></span>${cartsize}</a></li>
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#">About Us</a></li>
      <li><a href="#">Contact Us</a></li>
    </ul>
  </div>
</nav>

<br>
<div class="container-wrapper">
<div class="container">
<div class="page-header">
<h1>Cutomer</h1>


<p class="lead">Customer Details:</p>
</div>

<form:form commandName="order" class="form-horizontal">

<h3>Shipping Address:</h3>

<div class="form-group">
<label for="shippingApartmentNumber">House No.</label>
<form:input path="cart.customer.shippingAddress.houseno" id="shippingHouseNumber" class="form-Control" />
</div>

<div class="form-group">
<label for="shippingStreet">Street Name</label>
<form:input path="cart.customer.shippingAddress.street" id="shippingStreet" class="form-Control" />
</div>

<div class="form-group">
<label for="shippingStreet">Area</label>
<form:input path="cart.customer.shippingAddress.area" id="shippingArea" class="form-Control" />
</div>


<div class="form-group">
<label for="shippingCity">City</label>
<form:input path="cart.customer.shippingAddress.city" id="shippingCity" class="form-Control" />
</div>

<div class="form-group">
<label for="shippingState">State</label>
<form:input path="cart.customer.shippingAddress.state" id="shippingState" class="form-Control" />
</div>

<div class="form-group">
<label for="shippingCountry">Country</label>
<form:input path="cart.customer.shippingAddress.country" id="shippingCountry" class="form-Control" />
</div>

<div class="form-group">
<label for="shippingZip">Zipcode</label>
<form:input path="cart.customer.shippingAddress.pincode" id="shippingPincode" class="form-Control" />
</div>

<input type="hidden" name="_flowExecutionKey" />

<br/><br/>

<button class="btn btn-default" name="_eventId_backToCollectCustomerInfo">Back</button>

<input type="submit" value="Next" class="btn btn-default" name="_eventId_shippingDetailCollected" />

<button class="btn btn-default" name="_eventId_cancel">Cancel</button>

</form:form>
</div>
</div>
<%@ include file="../pages/footer.jsp"%>
</body>
</html>