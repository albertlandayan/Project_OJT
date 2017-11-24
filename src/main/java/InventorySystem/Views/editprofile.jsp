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
                    <a href="dashboarduser.jsp">
                        <p> Welcome User!</p>
                    </a>
                   
                </li>
                <li><div class="divider"></div></li>
                <li>
                    <a href="editprofile.jsp"><p>Edit Profile</p></a>
                </li>
                <li>
                    <a href="queue.jsp"><p>Queue</p></a>
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
                        <li><a style="font-size: 36px;  " href="">Kambi</a>
                        </li>
                          
                          
                          
                      


                     </ul>
                    </div>

                    </div>
                    <!-- nav center end-->
                        
                    
                    
                    
                    
                    <div style="text-align:right; padding: 10px;">
                        <a href="">Logout</a>
                    </div>
                   
                    
                    
                    
                    
                    <h5 align=center style="font-family: century gothic">Update Account  </h5>



<form method = "post"  "> <!-- FORM-->

			<div style= " text-align:center;   ">
			
			<div class="form-group" >
			<label for="name">Name:</label><br>
			<input type="text"  style= " width:200px ;  " class="form-control"  name="name" value="">
			</div>
			<div class="form-group">
			<label for="username">Username:</label><br>
			<input type="text" style= " width:200px ; " class="form-control" name="username" value="">
			</div>
			<div class="form-group">
			<label for="password">Password:</label><br>
			<input type="password" style= " width:200px ; " class="form-control" name="password" value="">
			</div>
			<div class="form-group">
			<label for="password2">Re-enter Password</label><br>
			<input type="password" style= " width:200px ; " class="form-control" name="password2" value="">
			</div>
			
			
			<button type="submit" name="btn4" class="waves-effect waves btn-flat modal-close" ><b>Update</b></button>


  
			</div>
			</div>
		</form>
                     


  
  
  
  
                    
                    
                    
          
                    
                    
                    
                      
                    
<div class="container" style="margin-top:80px;">
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
   $(".modal").modal();
  });
    </script>

</body>

</html>