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
                        <p> Welcome Admin!</p>
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
                    <a href="adminabout.jsp"><p>About</p></a>
                </li>
                <li>
                    <a href="admincontact.jsp"><p>Contact</p></a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        
                        
                        
                      <div id="nav"  >
                            
                      <div id="nav_wrapper">
                          
                      
                        <div style="text-align: left; padding: 10px; float: left"><a href="#menu-toggle" class="btn-floating light-blue accent-3" id="menu-toggle">
                        <i class="material-icons">menu</i></a></div>
                        <ul class="center" >
                        <li><a style="font-size: 36px; " href="dashboardadmin.jsp">Kambi</a>
                        </li>
                          
                          
                          
                      


                     </ul>
                    </div>

                    </div>
                    <!-- nav center end-->
                        
                    
                    
                    
                    
                    <!-- modal triggers -->
                    <div style="text-align:right; padding:10px;">
                    <a href="#">Logout</a>
                    </div>
                    
                    <div style="text-align:right; padding: 10px;" >
                        <input class=" with-gap light-blue" name="group1" type="radio" id="product" />
                        <label for="product">Search by Product</label>
                        <input class="with-gap light-blue" name="group1" type="radio" id="permit" />
                        <label for="permit">Search by Permit Date</label>
                        <input class="with-gap light-blue" name="group1" type="radio" id="invoice" />
                        <label for="invoice">Search by Invoice Date</label>

                        <br>
                        <i class="material-icons prefix">search</i>    
                        <input style=" width:200px; " name="search" type="text" > 
                       
                    </div>
                           
                    
        <h5 style="font-family: Century Gothic; text-align: center">Product Summary:</h5>     
        <table class="highlight centered">
        <thead>
          <tr>
              <th>Serial Number</th>
              <th>Item Description</th>
              <th>Supplier Name</th>
              <th> Permit Number</th>
              <th> Permit Date</th>
              <th> Invoice Number</th>
              <th> Invoice Date</th>
              <th> Quantity</th>
              <th> Price</th>
              <th> Total</th>
              <th>Action</th>

       
          </tr>
        </thead>

        <tbody>
          <tr>
            <td>23</td>
            <td>Test Item</td>
            <td>HP</td>
            <td>2</td>
            <td>11/16/2017</td>
            <td>1</td>
            <td>11/16/2017</td>
            <td>2</td>
            <td>122131</td>
            <td>1241241</td>
            <td><a href="#edit2"   >Edit</a>/<a href="">Delete</a></td>
          </tr>
          
        </tbody>
      </table>
                    
                    
                     


           
  <!-- Modal Edit -->
  <div id="edit2" class="modal">
    <div class="modal-content" style="font-family: Century Gothic">
        <div style="text-align: center">
        <h4 >Edit Product</h4>
        <form method="POST">
            <div style="float:left; margin-left: 100px">
        <div class="form-group " >
	<label for="itemdescription">Item Description:</label><br>
	<input type="text"  style= " width:200px ; display: inline-block; " class="form-control"  name="itemdescription">
	</div>
	<div class="form-group">
	<label for="suppliername">Supplier Name:</label><br>
	<input type="text" style= " width:200px ; display: inline-block;" class="form-control" name="suppliername">
        </div>
        <div class="form-group">
	<label for="quantity">Quantity:</label><br>
	<input type="text" style= " width:200px ; display: inline-block;" class="form-control" name="quantity">
        </div>
            </div>
        <div class="form-group">
	<label for="permitdate">Permit Date:</label><br>
	<input type="text" style= " width:200px ; display: inline-block;" class="form-control" name="permitdate">
        </div>
        <div class="form-group">
	<label for="invoicedate">Invoice Date:</label><br>
	<input type="text" style= " width:200px ; display: inline-block;" class="form-control" name="invoicedate">
        </div>
        <div class="form-group">
	<label for="price">Price:</label><br>
	<input type="text" style= " width:200px ; display: inline-block;" class="form-control" name="price">
        </div>
            
        <button type="submit" name="btn3" class="waves-effect waves-blue btn-flat modal-close" ><b>Edit</b></button>
        </form>
        </div>
    </div>
    <div class="modal-footer">
       
      <a href="#!" class="modal-action modal-close waves-effect waves-blue btn-flat">Close</a>
    </div>
  </div>                 
                    
                    
         
         
                   
<div class="container" style="margin-top:50px;">
    <div style="text-align: center"><ul class="pagination">
    <li class="disabled"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
    <li class="active light-blue"><a href="#!">1</a></li>
    <li class="waves-effect waves-blue"><a href="#!">2</a></li>
    <li class="waves-effect waves-blue"><a href="#!">3</a></li>
    <li class="waves-effect waves-blue"><a href="#!">4</a></li>
    <li class="waves-effect waves-blue"><a href="#!">5</a></li>
    <li class="waves-effect waves-blue"><a href="#!"><i class="material-icons">chevron_right</i></a></li>
        </ul>  </div>
<p align="center" >
<a href="dashboardadmin.jsp">Home</a> | <a href="adminabout.jsp">About Us</a> | <a href="admincontact.jsp">Contact Us</a></p>
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