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
                    <a href="logpage.jsp">
                        <p> Welcome to Kambi</p>
                    </a>
                   
                </li>
                <li><div class="divider"></div></li>
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
                        <li><a style="font-size: 36px;  " href="logpage.jsp">Kambi</a>
                        </li>
                          
                          
                          
                      


                     </ul>
                    </div>

                    </div>
                    <!-- nav center end-->
                        
                    
                    
                    
                    
                    <!-- modal triggers -->
                    <div style="text-align:right; padding:10px;">
                    <a href="#modal1"   >Login</a>
                    
                    </div>
                    
                    <p align="center" style="font-size: 22px;">See the unseen growth opportunity</p>
                    
                    
   <div class="carousel">
    <a class="carousel-item" href="#two!"><img src="images/soccer-ball-on-field.jpg"></a>
    <a class="carousel-item" href="#three!"><img src="images/ghg.jpg"></a>
    <a class="carousel-item" href="#four!"><img src="images/Halle-Draw-2017.jpg"></a>
    <a class="carousel-item" href="#five!"><img src="images/mn,.jpg"></a>
  </div>
      
                    

              


  <!-- Modal Login -->
  <div id="modal1" class="modal">
    <div class="modal-content" style="font-family: Century Gothic">
        <div style="text-align: center">
        <h4>Login to Kambi</h4>
        <form method="get">
      	<div class="form-group " >
	<label for="username">Username:</label><br>
        
        <input type="text"  style= " width:200px ; display: inline-block; " class="form-control"  name="username" id="username">
	</div>
	<div class="form-group">
	<label for="password">Password:</label><br>
	<input type="password" style= " width:200px ; display: inline-block;" class="form-control" name="password" id="password">
        </div>
        <button type="submit" name="btn1" id="btn1" class="waves-effect waves-blue  btn-flat modal-close" ><b>Login</b></button>
        </form>
        </div>
    </div>
    <div class="modal-footer">
       
      <a href="#!" class="modal-action modal-close waves-effect waves-blue btn-flat">Close</a>
    </div>
  </div>
  

 
  
  
  
  
  
  


  
  
  
  
                    
                    

                    
                      
                    
<div class="container" style="margin-top:50px;">
<p align="center" >
<a href="logpage.jsp">Home</a> | <a href="about.jsp">About Us</a> | <a href="contact.jsp">Contact Us</a></p>
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
    $('#btn1').click(function(){
     	$.ajax({
     		type: "POST",
     		url: "/ws/account/login",
    			 // The key needs to match your method's input parameter (case-sensitive).
 
 		    data: JSON.stringify({ "username": $('#username').val(), "password":$('#password').val()}),
 		    crossDomain: true,
 		    success: function(data){
                    $.cookie("session", data.session);
                    alert($.cookie("session"));
                    },
 
 		    failure: function(errMsg) {
 		    	alert(errMsg);
 		    },
 		    dataType: "json",
 		    contentType: "application/json"
 		});
       $('#btn2').click(function(){
       $.ajax({
         type: "POST",
         url: "/ws/account/create/customer",
          // The key needs to match your method's input parameter (case-sensitive).
 
         data: JSON.stringify({ "username": $('#username1').val(), "password":$('#password1').val(), "Name": $("#name1").val(), "type" : "NORMAL"}),
        crossDomain: true,
        success: function(data){
          alert('successfully registered!')
           $('#modal2').modal('close');
         
         },
 
         failure: function(errMsg) {
           alert(errMsg);
         },
         dataType: "json",
         contentType: "application/json"
     });
     });
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