<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab|Markazi+Text|Parisienne|Petit+Formal+Script|Pompiere|Rochester&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Cormorant+Infant|Josefin+Slab|Markazi+Text|Parisienne|Petit+Formal+Script|Pompiere|Rochester&display=swap" rel="stylesheet">
   <link rel="stylesheet" type="text/css" href="form/style.css">


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
    crossorigin="anonymous">

<script
    src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous">
</script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Login Page</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
		 <img class="img" style="width:120px;height:80px" src="../img/mylogo.png">
		
		  <a class="navbar-brand" href="#">Lele Rose</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		
		  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
		    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
		      <li class="nav-item active">
		        <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="/productList">Product List</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="/cart">Cart</a>
		      </li>
		       <li class="nav-item">
		        <a class="nav-link" href="/newEvent">Add Event</a>
		      </li>
		    </ul>
		    
		    <div class="form-inline my-2 my-lg-0">
		    	<form class="float-right" method="POST" action="/logout">
					<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
					<button type="submit" class="nav-link" style="color:purple">Logout!</button>
				</form>
		     	
			<form action="/search" method="post" >
			
<%-- 		     <form:form method="POST" action="/search" modelAttribute="searchProduct">
 --%>		   <input name="name" class="form-control mr-sm-2" type="search" style="background-color: #F9E7E7; color: white; border-color: white;"  placeholder="Search"/>
		      <button class="btn btn-outline-success my-2 my-sm-0"  style="border-color:pink; color: black" type="submit">Search</button>
			</form>		    	
		   
		  </div>
		</nav>
		
		s
		
	<!-- 	WRAPPER TOP  -->
	<div class="wrappertop">
	<h1 style="font-family: 'Petit Formal Script', cursive">Welcome, <c:out value="${user.firstName}" /> <c:out value="${user.lastName}" /></h1>
	 
    <form:form method="POST" action="/addEvent" modelAttribute="event">
        <p>
            <form:label path="recipient">Who is the Gift For? </form:label>
            <form:input type="text" path="recipient"/>
        </p>
        <p>
            <form:label path="date">Date:</form:label>
            <form:input type="date" path="date"/>
        </p>
         <p>
            <form:label path="eventName">Event:</form:label>
            <form:input type="text" path="eventName"/>
        </p>
		<h3>
    	 <label Class="col-form-label">Gift:<label>
		</h3>
		<select Class="custom-select" style="width:300px" name="products">
			<c:forEach items="${products}" var="product">
				<option value="${product.getId()}"><c:out value="${product.getName() }"/></option>
			</c:forEach>
		</select>
		<br>
		<br>
       
         <input class="button" type="submit" value="Save to your List" style="background-color:#E5CFCF"/>    
 		<br>
 	</form:form>
	</div>
	<div class="wrapper">
	
	
	<h1 style= "text-align:center; "> Welcome</h1>
	<div class="formContainer">

    
    <p><form:errors path="user.*"/></p>
   
    
  <!--   DASHBOARD -->
		
		
	<h2> To Remember your Special Days </h2>
	<table class="table table-striped">
	  <thead>
	    <tr>
	      <th scope="col">Gift For</th>
	      <th scope="col">Date</th>
	      <th scope="col">Event</th>
	       <th scope="col">Gift</th>
	     	
	      
	    </tr>
	  </thead>
	  <tbody>

	    <c:forEach var="i" items="${allEvents}" >
	   <p>
        <tr>
            <td><c:out value="${i.recipient}"/></td>
            <td><c:out value="${i.date}"/></td>
            <td><c:out value="${i.eventName}"/></td>   
            <td><img style="width:100px; height:75px" src= "<c:out value="${i.product.pictureUrl}"/>"></td>
            <td><div class="col-2 col-sm-2 col-md-2 text-right">
                <a href="/removeEvent/${i.id}" onclick="return confirm('Are you sure?')"><button type="button" class="btn btn-outline-danger btn-xs">
                <i class="fa fa-trash" aria-hidden="true"></i>
             </button></a> </td>
        </tr>
         </p>
        </c:forEach>
       
	  </tbody>
	</table>
	
	</div>

    </div>  
</body>
</html>