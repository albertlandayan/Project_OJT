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
                        
                        
                        
                      <div id="nav" >
                            
                      <div id="nav_wrapper">
                          
                      
                          <div style="text-align: left; padding: 10px; float: left"><a href="#menu-toggle" class="btn-floating light-blue accent-3" id="menu-toggle">
                                  <i class="material-icons">menu</i></a></div>
                        <ul class="center" >
                        <li><a  style="font-size: 36px;" href="dashboardadmin.jsp">Kambi</a>
                        </li>
                          
                          
                          
                      


                     </ul>
                    </div>

                    </div>
                    <!-- nav center end-->
                        
                    
                    
                    
                    
                    
                    <div style="text-align:right; padding: 10px;">
                    <a href="">Logout</a>
                    </div>
                 
                    
                    <p align="center" style="font-size: 22px;">See the unseen growth opportunity</p>
                    
                    
                     


     <div class="carousel">
    <a class="carousel-item" href="#two!"><img src="images/soccer-ball-on-field.jpg"></a>
    <a class="carousel-item" href="#three!"><img src="images/ghg.jpg"></a>
    <a class="carousel-item" href="#four!"><img src="images/Halle-Draw-2017.jpg"></a>
    <a class="carousel-item" href="#five!"><img src="images/mn,.jpg"></a>
     </div>
  
  
  
                    
                    
                    
<!--                    
          Start WOWSlider.com BODY section   add to the <body> of your page 
	<div id="wowslider-container1">
	<div class="ws_images"><ul>
		<li><img src="data1/images/mapua_facade.jpg" alt="iQueue by MIT" title="iQueue by MIT" id="wows1_0"/></li>
		<li><a href="http://wowslider.com/vi"><img src="data1/images/123144.jpg" alt="javascript slider" title="Queue at your Favorite restaurants!" id="wows1_1"/></a></li>
		<li><img src="data1/images/qwerty.jpg" alt="Queue at your favorite hotel" title="Queue at your favorite hotel" id="wows1_2"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="iQueue by MIT"><span><img src="data1/tooltips/mapua_facade.jpg" alt="iQueue by MIT"/>1</span></a>
		<a href="#" title="Queue at your Favorite restaurants!"><span><img src="data1/tooltips/123144.jpg" alt="Queue at your Favorite restaurants!"/>2</span></a>
		<a href="#" title="Queue at your favorite hotel"><span><img src="data1/tooltips/qwerty.jpg" alt="Queue at your favorite hotel"/>3</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.com/vi">bootstrap carousel example</a> by WOWSlider.com v8.2</div>
	<div class="ws_shadow"></div>
	</div>	
	<script type="text/javascript" src="engine1/wowslider.js"></script>
	<script type="text/javascript" src="engine1/script.js"></script>
	 End WOWSlider.com BODY section 
                    
                    -->
                    
                    
                    
                    
                    
                      
                    
<div class="container" style="margin-top:50px;">
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
    $(".modal").modal();
    $('.carousel').carousel();
   window.setInterval(function(){$('.carousel').carousel('next')},4000)
  
  });
    </script>

</body>

</html>