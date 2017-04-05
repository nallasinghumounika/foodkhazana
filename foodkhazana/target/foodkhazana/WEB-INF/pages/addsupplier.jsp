<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="links.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<style>
	body{
		background-size:contain;
		background-repeat:no-repeat;
		background-attachment: fixed;
		background-size:100% 100%;
	}



</style>
</head>

<body background="resources/images/xxxx.jpg">
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
   
    <ul class="nav navbar-nav">

      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><img class="img-circle"src="resources/images/users/${userimage}.jpg" height="30" width="30"/>Welcome ${username}<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="#">Edit Profile</a></li>
          <li><a href="#">Change Password</a></li>
          <li><a href="j_spring_security_logout">Logout</a></li>
        </ul>
      </li>  
     
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Products<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqDisplaysuppliersAdmin">Display All products</a></li>
          <li><a href="reqProductdetails">Add Product</a></li>          
        </ul>
      </li>  
     
     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Suppliers<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqDisplaysuppliersAdmin">Display All suppliers</a></li>
          <li><a href="reqSupplierform">Add Supplier</a></li>          
        </ul>
      </li>  
     
          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">ProductSupplier<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqDisplayXps">Display All ProductSuppliers</a></li>
          <li><a href="reqAddProSupForm">Add ProductSupplier</a></li>          
        </ul>
      </li>  
     
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="reqForSignupPage">About Us</a></li>
      <li><a href="reqForLoginPage">  Contact Us</a></li>
    </ul>
  </div>
</nav>
<div class="container-fluid" align="center"><br><br>
<h1 style="color:silver">Supplier Details</h1>
<form:form action="addSupplierToDB1" commandName="supplierObject1" enctype="multipart/form-data" method="POST">

<label for="suppliername" style="color:green"><h3>Supplier Name :</h3> <form:input path="suppliername" style="background-color:transparent"/></label>
<br>
<label for="suppliername" style="color:green"><h3>Supplier Desc :</h3> <form:input path="supplierdesc" style="background-color:transparent"/></label>

<br>
<label for="suppliername" style="color:green"><h3>Is Available:</h3></label>   
<label for="suppliername" style="color:green">True <form:radiobutton path="issupplieravailable" value="true" /></label>         
<label for="suppliername" style="color:green">False<form:radiobutton path="issupplieravailable" value="false" /></label>

<br>
<label for="suppliername" style="color:green"><h3></>Select Image :</h3> <form:input type="file" path="imagefile" style="background-color:transparent"/></label>
<br>
<form:button style="color:blue">Add Supplier</form:button>


</form:form>
</div>
<%@ include file="footer.jsp"%>

</body>
</html>