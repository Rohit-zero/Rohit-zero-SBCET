<%@page import="com.sbcet.helper.ConnectionProvider"%>
<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">


	<title>Admission</title>
           
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
       
        <link rel="stylesheet" type="text/css" href="css/style.css">
   
        <link rel="stylesheet" type="text/css" href="css/responsive.css">
     
        <link rel="stylesheet" type="text/css" href="css/animate.css">
      
        <link rel="stylesheet" type="text/css" href="css/prettyPhoto.css">
        
        <link rel="stylesheet" type="text/css" href="css/font-awesome.css">

        <link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
        <link rel="stylesheet" type="text/css" href="css/owl.theme.css">
        <link rel="stylesheet" type="text/css" href="css/owl.transitions.css">

	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">

        <link type="text/css" rel="stylesheet" href="css/form_css/bootstrap.min.css" />
        <link type="text/css" rel="stylesheet" href="css/form_css/style.css" />


</head>

<body data-spy="scroll" data-target=".navbar-default" data-offset="100">
    
<!--Preloader-->
<div id="preloader">
  <div id="pre-status">
    <div class="preload-placeholder"></div>
  </div>
</div>
<!--Navigation-->
<header id="menu">
    <div class="navbar navbar-default navbar-fixed-top" style="background-color: #c4c4c4">
    <div class="container">
      <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
          <a class="navbar-brand" href="index.jsp"><img src="images/Logo/01.png"></a></div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
              <li class="active"><a class="scroll" href="index.jsp">Home</a></li>
              <li><a class="scroll" href="index.jsp">Explore SBCET</a></li>
              <li><a class="scroll" href="index.jsp">Courses</a></li>
              <li><a class="scroll" href="index.jsp">Student Achevements</a></li>
              <li><a class="scroll" href="index.jsp">Training and Placement</a></li>
              <li><a class="scroll" href="index.jsp">Admission Cell</a></li>
              <li><a class="scroll" href="index.jsp">Contact</a></li>
          </ul>
        </div>
        <!-- /.navbar-collapse -->
      </div>
        
    </div>
  </div>
</header>
	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="col-md-7 col-md-push-5">
						<div class="booking-cta">
							<h1>Make your reservation</h1>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Animi facere, soluta magnam consectetur molestias itaque
								ad sint fugit architecto incidunt iste culpa perspiciatis possimus voluptates aliquid consequuntur cumque quasi.
								Perspiciatis.
							</p>
						</div>
					</div>
					<div class="col-md-4 col-md-pull-7">
						<div class="booking-form">
                                                    <form action="admission_form_servlet" method="post">
								<div class="form-group">
									<span class="form-label">Full Name</span>
									<input name="user_name" class="form-control" type="text" placeholder="Enter your full name*">
								</div>
                                                                <div class="form-group">
                                                                    <label for="exampleInputEmail1">Email address</label>
                                                                    <input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                                                </div>
                                                                <div class="form-group">
									<span class="form-label">Contact</span>
									<input name="user_phone" class="form-control" type="text" placeholder="Enter your Mobile Number**">
								</div>
                                                                <div class="form-group">
                                                                    <label for="gender">Select Gender</label>
                                                                    <br><br>
                                                                    <input type="radio"  id="gender" name="gender" value="male" >Male
                                                                    <input type="radio"  id="gender" name="gender" value="famale">Female
                                                                </div>
                                                            
								<div class="row">
									<div class="col-sm-6">
										<div class="form-group">
											<span class="form-label">D O B</span>
                                                                                        <input name="dob" class="form-control" type="date" required>
										</div>
									</div>
									<div class="col-sm-6">
										<div class="form-group">
											<span class="form-label">Course</span>
                                                                                        <select name="course" class="form-control">
												<option>/Choose Course</option>
                                                                                                <option value="Artificial Intelligence (AI)">Artificial Intelligence (AI)</option>
                                                                                                <option value="Computer Science Engineering">Computer Science Engineering</option>
                                                                                                <option value="Electrical Engineering">Electrical Engineering</option>
                                                                                                <option value="Civil Engineering">Civil Engineering</option>
                                                                                                <option value="Mechanical Engineering">Mechanical Engineering</option>
                                                                                                <option value="MCA">MCA</option>
                                                                                                
											</select>
											<span class="select-arrow"></span>
										</div>
									</div>
								</div>
                                                        <div class="form-check">
                                                            <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1" style="margin-left: 50px">
                                    <label class="form-check-label" for="exampleCheck1">agree terms and conditions</label>
                                </div>
                                                        <br>
								
                                                        <div class="form-btn" style="margin-left: 100px">
									<button class="submit-btn">Submit</button>
								</div>
                                                        
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="js/jquery.nicescroll.js"></script>
<script type="text/javascript" src="js/waypoints.min.js"></script>
<script type="text/javascript" src="js/jquery.isotope.js"></script>
<script type="text/javascript" src="js/wow.js"></script>
<script type="text/javascript" src="js/jquery.countTo.js"></script>
<script type="text/javascript" src="js/jquery.inview.min.js"></script>
<script type="text/javascript" src="js/owl.carousel.js"></script>
<script type="text/javascript" src="js/script.js"></script>
</body>

</html>