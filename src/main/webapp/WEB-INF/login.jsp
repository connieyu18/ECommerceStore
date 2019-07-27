<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
	pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<link
	href="https://fonts.googleapis.com/css?family=Josefin+Slab|Markazi+Text|Parisienne|Petit+Formal+Script|Pompiere|Rochester&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cormorant+Infant|Josefin+Slab|Markazi+Text|Parisienne|Petit+Formal+Script|Pompiere|Rochester&display=swap"
	rel="stylesheet">
=======
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab|Markazi+Text|Parisienne|Petit+Formal+Script|Pompiere|Rochester&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Cormorant+Infant|Josefin+Slab|Markazi+Text|Parisienne|Petit+Formal+Script|Pompiere|Rochester&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
>>>>>>> 29dba372ee2b2fcfb250c8fb142690029aa33c95

 <link href="https://fonts.googleapis.com/css?family=Parisienne&display=swap" rel="stylesheet">

<!DOCTYPE html>
<html>
<head>
<<<<<<< HEAD
<meta charset="UTF-8">
<title>Login Page</title>
<style>
.wrapper {
	width: 700px;
	margin: 40px;
	margin: 10%;
	text-align: center;
	position: relative;
	display: inline-block;
	font-family: 'Cormorant Infant', serif;
	border: solid gray 1px;
	padding: 20px 5px 200px 5px;
	background-color: white;
	border: none;
	border-radius: 100%
}

.leftBox {
	width: 48%;
	position: relative;
	display: inline-block;
}

.rightBox {
	width: 48%;
	position: relative;
	display: inline-block;
	vertical-align: top;
}

body {
	background-image:
		url("https://images.unsplash.com/photo-1519751138087-5bf79df62d5b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60");
	background-repeat: no-repeat;
	background-size: 100% 100%;
	/* opacity: 0.2; */
}

.button {
	font-size: 20px;
	font-family: 'Cormorant Infant', serif;
}
</style>
</head>
<body>
	<div class="wrapper">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<img class="img" style="width: 120px; height: 80px"
				src="../img/mylogo.png">
			<h2 style="font-family: 'Petit Formal Script'">Lele Rose</h2>

			<h1 style="text-align: center;">Welcome</h1>
			<div class="leftBox">
				<h1>Register!</h1>

				<p class="alert-danger">
					<form:errors path="user.*" />
					<c:out value="${emailError}" />
				</p>

				<form:form method="POST" action="/registration" modelAttribute="user">
					<p>
						<form:label path="firstName">First Name:</form:label>
						<form:input type="text" path="firstName" />
					</p>
					<p>
						<form:label path="lastName">Last Name:</form:label>
						<form:input type="text" path="lastName" />
					</p>
					<p>
						<form:label path="email">Email:</form:label>
						<form:input type="email" path="email" />
					</p>

					<p>
						<form:label path="password">Password:</form:label>
						<form:password path="password" />
						<form:errors path="password" />
					</p>
					<p>
						<form:label path="passwordConfirmation">Password Confirmation:</form:label>
						<form:password path="passwordConfirmation" />
					</p>
					<input class="button" type="submit" value="Register!"
						style="background-color: #E5CFCF" />
				</form:form>
			</div>


			<div class="rightBox">
				<h1>Login</h1>
				<p class="alert-danger input-group">
					<c:out value="${logoutMessage}" />
					<c:out value="${loginError}" />
				</p>
				<form method="POST" action="/login">
						<div class="form-group input-group">
						<input name="email" type="text" class="form-control"
							placeholder="Your Email *" />
					</div>
					<div class="form-group input-group">
						<input name="password" type="password" class="form-control"
							placeholder="Your Password *" />
					</div>
					<div class="form-group input-group">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
						<button type="submit" class="btn btn-success btn-block">
							Create Account</button>
						<!-- <a href="/registration">I don't have an account</a> -->
					</div>
			</form>
	</div>
</body>
</html>
=======
    <meta charset="UTF-8">
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js">
    
        <script>
        $(document).ready(function () {
        $('.forgot-pass').click(function(event) {
        $(".pr-wrap").toggleClass("show-pass-reset");
        }); 

        $('.pass-reset-submit').click(function(event) {
        $(".pr-wrap").removeClass("show-pass-reset");
        }); 
        });
    </script>
    
</head>
<body>
<div class="wrapper">
	<div class="regContainer">
		<img class="img" style="width:120px;height:80px" src="../img/mylogo.png">
   		<h1>Register!</h1>
    	<p><form:errors path="user.*"/></p>
    	<form:form  class="container p-3 bg-light col-6 d-inline-block align-top" method="POST" action="/registration" modelAttribute="user">
     	 <p> <div class="form-group row">
	        <form:label path="firstName" class="col-sm-2 col-form-label">First Name:</form:label>
	        <form:errors path="firstName"/>
	        <div class="col-sm-3">
	        <form:input path="firstName" class="form-control"/>
	        </div>
		</div></p>
 		  <div class="form-group row">
		        <form:label path="lastName" class="col-sm-2 col-form-label">Last Name:</form:label>
		        <form:errors path="lastName"/>
		        <div class="col-sm-3">
		        	<form:input path="lastName" class="form-control"/>
		         </div>
 		  </div>
 		  <div class="form-group row">
		        <form:label path="email" class="col-sm-2 col-form-label">Email</form:label>
		        <form:errors path="email"/>
		        <div class="col-sm-3">
		        	<form:input path="email" class="form-control"/>
		         </div>
 		  </div>
 		  <div class="form-group row">
		        <form:label path="password" class="col-sm-2 col-form-label">Password:</form:label>
		        <form:errors path="password"/>
		        <div class="col-sm-3">
		        	<form:input path="password" class="form-control"/>
		         </div>
 		  </div>
 		   <div class="form-group row">
		        <form:label path="passwordConfirmation" class="col-sm-2 col-form-label">Confirm Password:</form:label>
		        <form:errors path="passwordConfirmation"/>
		        <div class="col-sm-3">
		        	<form:input path="passwordConfirmation" class="form-control"/>		        	
		         </div>  
 		  </div>
 		  <div class="col-lg-5">
 		  	<input class="button" type="submit" value="Register!" style="background-color:#E5CFCF"/>		  
		   </div>
		   </form:form>
 		  </div>
    	

	<div class="login-container">
		<h2>Looking for a gift for someone?</h2>
		<h3>Do you already have an account? Login here </h3>

 	  <!-- Trigger the modal with a button -->
	 <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal"style="float:right">Login</button>
 
	<!-- Modal -->
  	<div class="modal fade" id="myModal" role="dialog">
    	<div class="modal-dialog">
    
	      <!-- Modal content-->
	      <div class="modal-content">
	        <div class="modal-header">
	          <button type="button" style="float:right" class="btn btn-default" class="close" data-dismiss="modal">&times;</button>
	          <h4 class="modal-title">Please Login</h4>
	        </div>
	      <div class="modal-body"> 
             <p><c:out value="${error}" /></p>
			    <form method="post" action="/login">
			        <div class="form-group row">
			            <label class="col-sm-3 col-form-label" for="email">Email:</label>
			            <div class="col-sm-6">
			            <input type="text" id="email" name="email"/>
			             </div>
			        </div>
			        <div class="form-group row">
			            <label class="col-sm-3 col-form-label" for="passsword">Password:</label>
			            <div class="col-sm-6">
			            <input type="password" id="password" name="password"/>
			           </div>
			        </div>
			        <input id="loginbutton" type="submit" value="Login!"/>
			    </form>  
 		  </div>
          </div>
       </div>
   	</div>
   	</div> 
 </div> 
 </body>

>>>>>>> 29dba372ee2b2fcfb250c8fb142690029aa33c95
