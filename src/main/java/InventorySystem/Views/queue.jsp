<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, shrink-to-fit=no, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>iQueue</title>

    
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
                          
                      
                          <div style="text-align: left; padding: 10px; float: left"><a href="#menu-toggle" class="btn-floating red" id="menu-toggle">
                                  <i class="material-icons">menu</i></a></div>
                        <ul class="center" >
                        <li><a  href="dashboarduser.jsp">iQueue</a>
                        </li>

                     </ul>
                    </div>

                    </div>
                    <!-- nav center end-->
                        
                    
                    
                    
                    
                    <!-- modal triggers -->
                    <div style="text-align:right; padding:10px;">
                    <a href="#">Logout</a>
                    </div>
                    
                    <p align="center" style="font-size: 22px;">Start Queuing!</p>
                    
                    <div class="container">
			<div id="cardholder" class="col s1 m10">
				<div class="card horizontal">
					<div class="card-image">
						<img src="images/user.jpg"/>
					</div>
					<div class="card-stacked">
						<div class="card-content">
							<p>Now Serving: 10</p>
							<p>Your Number is: 30</p>
							
						</div>
						<div class="card-action">
							<a class="exit-queue" href="#">Exit Queue</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Add Button -->
		<div class="fixed-action-btn" style="bottom: 45px; right: 24px;">
			<a id="menu" class="waves-effect waves-light btn-large red btn btn-floating" href="#modal-add-queue"><i class="material-icons">add</i></a><!-- href triggers modal -->
		</div>

	

		<!-- Add Queue Modal -->
		<div id="modal-add-queue" class="modal">
			<div class="modal-content">
                            <h4 style="font-family: Century Gothic">Queue</h4>
				<div class="row">
					<form class="col s12">
						<div class="row">
							<div class="input-field col s12">
								<i class="material-icons prefix">dialpad</i>
								<input id="icon_telephone" type="tel" class="validate"/>
								<label for="icon_telephone">Counter #</label>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="modal-footer">
				<a id="modal-join" href="#!" class="modal-action waves-effect waves-red btn-flat">Join</a>
				<a href="#!" class="modal-action modal-close waves-effect waves-red btn-flat">Cancel</a>
			</div>
		</div>
                    
                    
                    
                    
                    
                    
                     


           
                    
                    
                    
                    
                  
                      
                    
<div class="container" style="margin-top:80px; padding-left: 35%;  position: relative; float:left; display: block">
    <div style="text-align: center"><ul class="pagination">
    <li class="disabled"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
    <li class="active"><a href="#!">1</a></li>
    <li class="waves-effect"><a href="#!">2</a></li>
    <li class="waves-effect"><a href="#!">3</a></li>
    <li class="waves-effect"><a href="#!">4</a></li>
    <li class="waves-effect"><a href="#!">5</a></li>
    <li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a></li>
        </ul>  </div>
    <p align="center" >
    
    
    
<a href="">Home</a> | <a href="">About Us</a> | <a href="">Contact Us</a></p>
<p align="center" style="font-size: 15px">
iQueue<br>
Manapsal | Buriel | Landayan<br>  &copy; 2017 All Rights Reserved</p>
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
    $("#add-button").tapTarget("open");
    
    //when the modal "Join" button is pressed
    $("#modal-join").click(function(){
    $("#cardholder").append("<div class='card horizontal'><div class='card-image'><img src='images/user.jpg'/></div><div class='card-stacked'><div class='card-content'><p>Now Serving: 10</p><p>Your Number is: 30</p></div><div class='card-action'><a class='exit-queue' href='#'>Exit Queue</a></div></div></div>");
    $(this).modal("close");
    });
				
    $("#cardholder").on("click", ".exit-queue", function(){
    var p = $(this).parent().parent().parent();
    p.fadeOut(400, "swing", function(){p.remove();});
    });
  });
    </script>

</body>

</html>