<nav class="navbar navbar-inverse">
   <div class="container">
     
     <ul class="nav navbar-nav">
     
     <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown"href="#"><img class="img-circle"src="resources/images/users/${userlogedin}.jpg" height="30" width="30"/>Welcome ${userlogedin}</a>
    <ul class="dropdown-menu">
     <li><a href="#">Edit Profile</a></li>
      <li><a href="#">Change Password</a></li>
       <li><a href="j_spring_security_logout">Logout</a></li>
       </ul>
       </li>
       
        <li class="dropdown"><a class="dropdown-toggle"data-toggle="dropdown"href="#">Products<span class="caret"></span></a>
       <ul class="dropdown-menu">
     <li><a href="reqDisplayprodcutsAdmin">Display All products</a></li>
      <li><a href="reqProductdetails">Add Products</a></li>
      </ul>
      </li>
       
       <li class="dropdown"><a class="dropdown-toggle"data-toggle="dropdown"href="#">Suppliers<span class="caret"></span></a>
       <ul class="dropdown-menu">
     <li><a href="reqDisplaysuppliersAdmin">Display All suppliers</a></li>
      <li><a href="reqSupplierform">Add Supplier</a></li>
      </ul>
      </li>
       
        <li class="dropdown"><a class="dropdown-toggle"data-toggle="dropdown"href="#">ProductSuppliers<span class="caret"></span></a>
       <ul class="dropdown-menu">
     <li><a href="reqDisplayXps">Display All productsuppliers</a></li>
      <li><a href="reqAddProSupForm">Add ProductSupplier</a></li>
      </ul>
      </li>
     <li class="dropdown"><a class="dropdown-toggle"data-toggle="dropdown"href="#">Users<span class="caret"></span></a>
       <ul class="dropdown-menu">
     <li><a href="reqDisplayUsers">Display Users</a></li>
      
      </ul>
      </li>
          
      
      </ul>
       <ul class="nav navbar-nav  navbar-right">
       <li><a href="reqForSignUpPage">About Us</a></li>
       <li><a href="reqForLoginPage">Contact Us</a></li>
   
   </ul>
   </div>
   </nav>