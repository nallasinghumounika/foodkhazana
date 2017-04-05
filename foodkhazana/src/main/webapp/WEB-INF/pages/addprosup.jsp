<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="links.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
	body{
		background-size:contain;
		background-repeat:no-repeat;
		background-attachment: fixed;
		background-size:100% 100%;
	}



</style>
</head>
<body background="resources/images/xps.jpg">
<nav class="navbar navbar-inverse  navbar-fixed-top">
  <div class="container">
   
    <ul class="nav navbar-nav">

      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><img class="img-circle"src="resources/images/users/${userimage}.jpg" height="30" width="30"/>Welcome ${username}<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqEditProfilePage?uid=${loginuserid}">Edit Profile</a></li>
          <li><a href="#">Change Password</a></li>
          <li><a href="j_spring_security_logout">Logout</a></li>
        </ul>
      </li>  
     
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Products<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqDisplayProdcutsAdmin">Display All products</a></li>
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
<br><br><br><br>
<div class="container-fluid" align="center">
<h1 style="color:silver">Product Supplier Details</h1>
<form:form commandName="prodsupObject" action="reqAddProdSupDataToDb">

<label for="products" style="color:green"><h3>Products</h3> </label>
<form:select path="productid" style="background-color:transparent">
<c:forEach var="prd" items="${products}">
<option value="${prd.productid}"> ${prd.productname}</option>
</c:forEach>
</form:select>

<label for="suppliers" style="color:green"><h3>Suppliers</h3></label> 
<form:select path="supplierid" style="background-color:transparent" >
<c:forEach var="sup" items="${suppliers}">
<option value="${sup.supplierid}"> ${sup.suppliername}</option>
</c:forEach>
</form:select>
<br>
<label for="price" style="color:green"><h3>Price</h3></label>
<div class="form-group"> <form:input path="productsupplierprice" style="background-color:transparent"/></div>
<label for="stock" style="color:green"><h3>Stock</h3></label>
<div class="form-group"> <form:input path="productsupplierstock" style="background-color:transparent"/></div>

<label for="suppliername" style="color:green"><h3>IsAvailable</h3>   True<form:radiobutton path="isproductsupplieravailable" value="true"/></label>
<label for="false" style="color:green">False<form:radiobutton path="isproductsupplieravailable" value="false"/></label>
<br>
<label for="addrecord" style="color:blue"><form:button>Add Record</form:button></label>
</form:form>

<%@ include file="footer.jsp"%>
</body>
</html>