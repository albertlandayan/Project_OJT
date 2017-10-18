<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Kambi</title>

    
    <!-- Start WOWSlider.com HEAD section --> <!-- add to the <head> of your page -->
    <link rel="stylesheet" type="text/css" href="engine1/style.css" />
    <script type="text/javascript" src="engine1/jquery.js"></script>
    <!-- End WOWSlider.com HEAD section -->
    <!-- Custom CSS -->
    <link href="css/yoyo.css" rel="stylesheet">
    <link href="css/simple-sidebar.css" rel="stylesheet">
    <!--Import Google Icon Font-->
    <link href="css/icon.css" rel="stylesheet"/>
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
    <script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>	 
    <script type="text/javascript" src="js/materialize.min.js"></script>
</head>

<body>

    <div id="wrapper">

        <!-- Sidebar -->
                <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="dashboardadmin.jsp">
                        <p> Welcome Admin</p>
                    </a>
                   
                </li>
                <li><div class="divider"></div></li>
                <li>
                    <a href="users.jsp"><p>Manage Users</p></a>
                </li>
                <li>
                    <a href="addproduct.jsp"><p>Add Products</p></a>
                </li>
                <li>
                    <a href="productsummary.jsp"><p>Product Summary</p></a>
                </li>
                <li>
                    <a href="about.jsp"><p>About</p></a>
                </li>
                <li>
                    <a href="contact.jsp"><p>Contact</p></a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        
                        
                        
                      <div id="nav" >
                            
                      <div id="nav_wrapper">
                          
                      
                          <div style="text-align: left; padding: 10px; float: left"><a href="#menu-toggle" class="btn-floating light-blue accent-3" id="menu-toggle">
                                  <i class="material-icons">menu</i></a></div>
                        <ul class="center" >
                        <li><a style="font-size: 36px" href="dashboardadmin.jsp">Kambi</a>
                        </li>
                          
                          
                          
                      


                     </ul>
                    </div>

                    </div>
                    <!-- nav center end-->
                        
                    
                    
                    
                    
                    <!-- modal triggers -->
                    <div style="text-align:right; padding:10px;">
                    <a href="#">Logout</a>
                    </div>
                    
                    
                    
                    
    <h5 style="font-family: Century Gothic; text-align: center">Add a Product:</h5>    
    
    <ul style="font-family: Century Gothic;" class="collapsible" data-collapsible="expandible">
    <li>
      <div class="collapsible-header"><i class="material-icons">add_shopping_cart</i>Products</div>
      <div class="collapsible-body" style="text-align: center;">
        <div style="float: left; margin-left: 25%">
        <div class="form-group " >
	<label  for="serialnumber">Serial Number:</label><br>
	<input type="text"  style= " width:200px ; display: inline-block; " class="form-control"  name="serialnumber">
	</div>
     
        <div class="form-group " >
	<label for="brand">Brand:</label><br>
	<input type="text"  style= " width:200px ; display: inline-block; " class="form-control"  name="brand">
	</div>
              </div>    
          
        <div class="form-group " >
	<label for="model">Model:</label><br>
	<input type="text"  style= " width:200px ; display: inline-block; " class="form-control"  name="model">
	</div>
        <div class="form-group" >
	<label for="price">Price:</label><br>
	<input type="text"  style= " width:200px ; display: inline-block; " class="form-control"  name="price">
	</div>
          
        <div class="form-group " >
	<label for="description">Description:</label><br>
	<input type="text"  style= " width:200px ; display: inline-block; " class="form-control"  name="description">
	</div>

      
      
      
      
      </div>
    </li>
    <li>
      <div class="collapsible-header"><i class="material-icons">group_add</i>Suppliers</div>
      <div class="collapsible-body" style="text-align: center;">
          
        <div class="form-group" >
	<label  for="suppliername">Supplier Name:</label><br>
	<input type="text"  style= " width:200px ; display: inline-block; " class="form-control"  name="suppliername">
	</div>
           
      </div>
    </li>
    <li>
      <div class="collapsible-header"><i class="material-icons">attach_money</i>Purchasing Permit</div>
      <div class="collapsible-body" style="text-align: center;">
          <div style="float: left; margin-left: 25%">
        <div class="form-group"  >
	<label  for="permitnumber">Permit Number:</label><br>
	<input type="text"  style= " width:200px ; display: inline-block; " class="form-control"  name="permitnumber">
	</div>

              </div>    
          
        <div class="form-group " >
	<label for="permitdate">Permit Date:</label><br>
	<input type="text"  style= " width:200px ; display: inline-block; " class="form-control"  name="permitdate">
	</div>
          
        <div class="form-group " >
	<label for="permittype">Permit Type:</label><br>
	<input type="text"  style= " width:200px ; display: inline-block; " class="form-control"  name="permittype">
	</div>
          
      </div>
    </li>
        <li>
      <div class="collapsible-header"><i class="material-icons">attach_money</i>Purchasing Invoice</div>
      <div class="collapsible-body" style="text-align: center;">
      
      <div style="float: left; margin-left: 25%">
        <div class="form-group" >
	<label  for="invoicenumber">Invoice Number:</label><br>
	<input type="text"  style= " width:200px ; display: inline-block; " class="form-control"  name="invoicenumber">
	</div>
     

              </div>    
          
        <div class="form-group " >
	<label for="quantity">Quantity:</label><br>
	<input type="text"  style= " width:200px ; display: inline-block; " class="form-control"  name="quantity">
	</div>

          
        <div class="form-group " >
	<label for="invoicedate">Invoice Date:</label><br>
	<input type="text"  style= " width:200px ; display: inline-block; " class="form-control"  name="invoicedate">
	</div>
      </div>
    </li>
  </ul>

    <div style="text-align: center; margin-top: 50px; font-family:Century Gothic;">
<button class="btn waves-effect waves-light light-blue accent-3" type="submit" name="action">Submit
    <i class="material-icons right">send</i>
  </button>
    </div>   
    
    
<div class="container" style="margin-top:50px;">

<p align="center" >
<a href="">Home</a> | <a href="">About Us</a> | <a href="">Contact Us</a></p>
<p align="center" style="font-size: 15px">
Kambi<br>
Buriel | Landayan<br>  &copy; 2017 All Rights Reserved</p>
<br>
</div>
                    
                    
                    
                        
                        
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->




   
    <!-- Menu Toggle Script -->
    <script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
      
    
  
  
  
   $(document).ready(function(){
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
       $(document).ready(function(){
    // the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered
    $(".modal").modal();
  });
  });
    </script>

</body>

</html>