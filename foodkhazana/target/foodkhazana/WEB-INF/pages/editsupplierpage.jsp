<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="links.jsp" %>
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
<br><br>
Edit product
<form:form action="reqEditSupplierToDb" commandName="supplierObj" enctype="multipart/form-data" method="POST">

<br>Product ID : <form:hidden path="supplierid"/>

<br>Product Name : <form:input path="suppliername"/>

<br>Product Desc : <form:input path="supplierdesc"/>

<br>
Is Available  :   
True <form:radiobutton path="issupplieravailable" value="true" />         
False<form:radiobutton path="issupplieravailable" value="false" />

<br>
Select Image : <form:input type="file" path="imagefile"/>
<br>
<form:button>Edit Supplier</form:button>


</form:form>

</body>
</html>