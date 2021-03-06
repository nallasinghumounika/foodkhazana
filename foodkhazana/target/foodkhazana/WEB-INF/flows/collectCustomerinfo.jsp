<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ include file=" ../pages/links.jsp" %>
</head>
<body>
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

<h3>Basic Info:</h3>

<div class="form-group">
<label for="name">First Name</label>
<form:input path="cart.customer.custname" id="custname" class="form-Control" />
</div>


<div class="form-group">
<label for="email">Email</label>
<form:input path="cart.customer.custemailid" id="custemailid" class="form-Control" />
</div>

<div class="form-group">
<label for="phone">Phone</label>
<form:input path="cart.customer.custmobileno" id="custmobileno" class="form-Control" />
</div>

<br/>

<h3>Billing Address:</h3>

<div class="form-group">
<label for="billingStreet">Street Name</label>
<form:input path="cart.customer.billingAddress.street" id="billingStreet" class="form-Control" />
</div>


<div class="form-group">
<label for="billingApartmentNumber">House No.</label>
<form:input path="cart.customer.billingAddress.houseno" id="billingHouseno" class="form-Control" />
</div>

<div class="form-group">
<label for="billingApartmentNumber">Area</label>
<form:input path="cart.customer.billingAddress.area" id="billingArea" class="form-Control" />
</div>

<div class="form-group">
<label for="billingCity">City</label>
<form:input path="cart.customer.billingAddress.city" id="billingCity" class="form-Control" />
</div>

<div class="form-group">
<label for="billingState">State</label>
<form:input path="cart.customer.billingAddress.state" id="billingState" class="form-Control" />
</div>

<div class="form-group">
<label for="billingCountry">Country</label>
<form:input path="cart.customer.billingAddress.country" id="billingCountry" class="form-Control" />
</div>

<div class="form-group">
<label for="billingZip">Zipcode</label>
<form:input path="cart.customer.billingAddress.pincode" id="billingPincode" class="form-Control" />
</div>

<input type="hidden" name="_flowExecutionKey" />

<br/><br/>

<input type="submit" value="Next" class="btn btn-default" name="_eventId_customerInfoCollected" />

<button class="btn btn-default" name="_eventId_cancel">Cancel</button>

</form:form>
</div>
</div>
</body>
</html>