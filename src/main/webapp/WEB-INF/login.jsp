<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab|Markazi+Text|Parisienne|Petit+Formal+Script|Pompiere|Rochester&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Cormorant+Infant|Josefin+Slab|Markazi+Text|Parisienne|Petit+Formal+Script|Pompiere|Rochester&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

 <link href="https://fonts.googleapis.com/css?family=Parisienne&display=swap" rel="stylesheet">

<!DOCTYPE html>
<html>
<head>
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

