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
                    <a href="#"><p>About</p></a>
                </li>
                <li>
                    <a href="#"><p>Contact</p></a>
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
                        <li><a  style="font-size: 36px; " href="dashboardadmin.jsp">Kambi</a>
                        </li>
                          
                          
                          
                      


                     </ul>
                    </div>

                    </div>
                    <!-- nav center end-->
                        
                    
                    
                    
                    
                    <!-- modal triggers -->
                    <div style="text-align:right; padding:10px;">
                    <a href="#">Logout</a>
                    </div>
                    
                    
                    
                    
        <h5 style="font-family: Century Gothic; text-align: center">Manage Users:</h5>   
        
        <table class="highlight centered" style="font-family: Century Gothic">
        <thead >
          <tr>
              <th>Username</th>
              <th>Password</th>
              <th>Name</th>
              <th>Action</th>
       
          </tr>
        </thead>

        <tbody>
          <tr>
            <td>Username</td>
            <td>Password</td>
            <td>Name</td>
            
            <td><a href="#edit2"   >Edit</a>/<a href="">Delete</a></td>
          </tr>
          
        </tbody>
      </table>
                    
                    
                     


           
  <!-- Modal Edit -->
  <div id="edit2" class="modal">
    <div class="modal-content" style="font-family: Century Gothic">
        <div style="text-align: center">
        <h4 >Edit User</h4>
        <form method="POST">
        <div class="form-group " >
	<label for="username">Username:</label><br>
	<input type="text"  style= " width:200px ; display: inline-block; " class="form-control"  name="username">
	</div>
        <div class="form-group">
	<label for="name">Name:</label><br>
	<input type="text" style= " width:200px ; display: inline-block;" class="form-control" name="name">
        </div>
	<div class="form-group">
	<label for="password">Password</label><br>
	<input type="password" style= " width:200px ; display: inline-block;" class="form-control" name="password">
        </div>
    
            
        <button type="submit" name="btn3" class="waves-effect waves-blue btn-flat modal-close" ><b>Edit</b></button>
        </form>
        </div>
    </div>
    <div class="modal-footer">
       
      <a href="#!" class="modal-action modal-close waves-effect waves-red btn-flat">Close</a>
    </div>
  </div>                  
                    
                    
<!-- Add Button -->
<div class="fixed-action-btn" style="bottom: 45px; right: 24px;">
<a id="menu" class="waves-effect waves-light btn-large light-blue btn btn-floating" href="#add"><i class="material-icons">add</i></a><!-- href triggers modal -->
</div>            
<!-- Modal Add -->
<div id="add" class="modal" style="font-family: Century Gothic">
    <div class="modal-content">
        <div style="text-align: center">
        <h4>Add User</h4>
        <form method="POST">
        
      	<div class="form-group " >
	<label for="username">Username:</label><br>
	<input type="text"  style= " width:200px ; display: inline-block; " class="form-control"  name="username">
	</div>
	<div class="form-group">
	<label for="name">Name:</label><br>
	<input type="text" style= " width:200px ; display: inline-block;" class="form-control" name="name">
        </div>
        <div class="form-group">
	<label for="password">Password:</label><br>
	<input type="password" style= " width:200px ; display: inline-block;" class="form-control" name="password">
        </div>
        
        
            
        <button type="submit" name="addbtn" class="waves-effect waves-light  btn-flat modal-close" ><b>Add User</b></button>
        </form>
        </div>
    </div>
    <div class="modal-footer">
       
      <a href="#!" class="modal-action modal-close waves-effect waves-light  btn-flat">Close</a>
    </div>
  </div>                    
                      
                    
<div class="container" style="margin-top:50px;">
    <div style="text-align: center"><ul class="pagination">
    <li class="disabled"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
    <li class="active light-blue"><a href="#!">1</a></li>
    <li class="waves-effect"><a href="#!">2</a></li>
    <li class="waves-effect"><a href="#!">3</a></li>
    <li class="waves-effect"><a href="#!">4</a></li>
    <li class="waves-effect"><a href="#!">5</a></li>
    <li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a></li>
        </ul>  </div>
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