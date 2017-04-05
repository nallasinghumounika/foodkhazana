<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="links.jsp"%>
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
<body background="resources/images/lo.jpg">
<nav class="navbar navbar-inverse  navbar-fixed-top">
  <div class="container">
   
    <ul class="nav navbar-nav">

      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><img class="img-circle"src="resources/images/users/${userimage}.jpg" height="30" width="30"/>Welcome ${username}<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="#">Edit Profile</a></li>
          <li><a href="#">Change Password</a></li>
          <li><a href="reqLogout">Logout</a></li>
        </ul>
      </li>  
     
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Products<span class="caret"></span></a>
	     <ul class="dropdown-menu">
          <li><a href="reqDisplayprodcutsAdmin">Display All products</a></li>
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
Edit product
<form:form action="reqEditprodsupToDb" commandName="prodsupObj" method="POST">

<label for="products" style="color:green">Products </label>
<form:input path="productid" readonly="true"/>
<%-- 
<c:forEach var="prd" items="${products}">
<option value="${prd.productid}"> ${prd.productname}</option>
</c:forEach> --%>


<label for="suppliers" style="color:green">Suppliers</label> 
<form:input path="supplierid" readonly="true"/>
<%-- <c:forEach var="sup" items="${suppliers}">
<option value="${sup.supplierid}"> ${sup.suppliername}</option>
</c:forEach>
 --%>
<form:hidden path="psid"/>
<br>
<label for="price" style="color:green">Price</label>
<div class="form-group"> <form:input path="productsupplierprice" style="background-color:silver"/></div>
<label for="stock" style="color:green">Stock</label>
<div class="form-group"> <form:input path="productsupplierstock" style="background-color:silver"/></div>

<label for="suppliername" style="color:green">IsAvailable   True <form:radiobutton path="isproductsupplieravailable" value="true"/></label>
<label for="false" style="color:green">False<form:radiobutton path="isproductsupplieravailable" value="false"/></label>
<br>
<label for="addrecord" style="color:green"><form:button>Edit Record</form:button></label>
</form:form>

<%-- 
<br>Product ID : <form:hidden path="psid"/>

<br>ProductSupplierprice : <form:input path="productsupplierprice"/>

<br>ProductSupplierstock : <form:input path="productsupplierstock"/>

<br>
Is Available  :   
True <form:radiobutton path="isproductsupplieravailable" value="true" />         
False<form:radiobutton path="isproductsupplieravailable" value="false" />


<br>
<form:button>Edit Product</form:button> --%>



</body>
</html>