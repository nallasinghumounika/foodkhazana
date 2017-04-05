<html>
<head>
<%@ include file="links.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="abc"%>
<style>
	body{
		background-size:contain;
		background-repeat:no-repeat;
		background-attachment: fixed;
		background-size:100% 100%;
	}



</style>
</head>

<body background="resources/images/edit1.jpg" style="background-repeat:no-repeat">
<nav class="navbar navbar-inverse navbar-fixed-top">
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
 <div class="container-fluid" align="center"> 
<h1 style="color:silver">Product Details</h1>
<abc:form action="addProductToDB1" commandName="productObject1" enctype="multipart/form-data" method="POST">

 <label for="productname" style="color:midnightblue"><h4>Product Name :</h4></label>
<abc:errors path="productname"></abc:errors>
<div class="form-group"> <abc:input path="productname" style="background-color:transparent"/></div>

 <label for="productdesc" style="color: midnightblue"><h4>Product Desc :</h4></label>
 <div class="form-group"><abc:input path="productdesc" style="background-color:transparent"/>
<abc:errors path="productdesc"></abc:errors>
 </div>

<label for="isavailable" style="color: midnightblue"><h4>Is Available:</h4></label> 
    
<label for="true" style="color: midnightblue"> True <abc:radiobutton path="isproductavailable" value="true"/></label>         
<label for="false" style="color: midnightblue"> False<abc:radiobutton path="isproductavailable" value="false"/></label>
<br>
<label for="selectimage" style="color:midnightblue"><h4>Select Image :</h4> <abc:input type="file" path="imagefile" style="background-color:transparent"/></label>
<br>
<abc:button style="color:blue">Add Product</abc:button>


</abc:form>
</div>
<%@ include file="footer.jsp"%>
</body>
</html>