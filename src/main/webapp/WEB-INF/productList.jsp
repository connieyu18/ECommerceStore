<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
    
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<link href="https://fonts.googleapis.com/css?family=Parisienne&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Parisienne|Rochester&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Josefin+Slab|Parisienne|Rochester&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Josefin+Slab|Markazi+Text|Parisienne|Petit+Formal+Script|Pompiere|Rochester&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">

<link href="https://fonts.googleapis.com/css?family=Cormorant+Infant|Josefin+Slab|Markazi+Text|Parisienne|Petit+Formal+Script|Pompiere|Rochester&display=swap" rel="stylesheet">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
    crossorigin="anonymous">
   <link rel="stylesheet" type="text/css" href="css/productList.css">
    

<script
    src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous">
</script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<div class="wrapper"> 
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
		      <li class="nav-item">
		        <a class="nav-link" href="/admin">Admin</a>
		      </li>
		    </ul>
		    
		    <div class="form-inline my-2 my-lg-0">
		     	<a class="nav-link" href="/logout" style="color:purple" >Logout</a>
			<form action="/search" method="post" >
			
<%-- 		     <form:form method="POST" action="/search" modelAttribute="searchProduct">
 --%>		   <input name="name" class="form-control mr-sm-2" type="search" style="background-color: #F9E7E7; color: white; border-color: white;"  placeholder="Search"/>
		      <button class="btn btn-outline-success my-2 my-sm-0"  style="border-color:pink; color: black" type="submit">Search</button>
			</form>		    	
		   
		  </div>
		</nav>
		<div class="title"> 
	
		<span style="font-size:25px; right:10px">WELCOME</span>
		<h1 style="color: #E5CFCF; font-size: 60px; font-family: 'Petit Formal Script', cursive;" > <c:out value="${user.firstName}" /> <c:out value="${user.lastName}" /></h1>
		<br> 
		<br>
		
			<h1 style="float:center; color:gray" > All Products</h1>
		
		
		</div>
	</div> 
<div class="bottomBox">
<div class="leftBox">

<!--   SIDEBAR  -->
	<div class="card">
	<article class="card-group-item">
		<header class="card-header">
			<h6 class="title">Categories </h6>
		</header>
		<div class="card-body">
		    <form action="/showCategoryProduct" method="post" >
	
<%-- 			<form:form method="POST" action="/showCategoryProduct" modelAttribute="showProductCat">
 --%>
				<label class="form-check">
				  <input class="form-check-input" type="checkbox" name="category" value="flowers">
				  <span class="form-check-label">
				    Flowers
				  </span>
				</label> <!-- form-check.// -->
				<label class="form-check">
				  <input class="form-check-input" type="checkbox" name="category" value="clothing">
				  <span class="form-check-label">
				  </span>
				</label>  <!-- form-check.// -->
				<label class="form-check">
				  <input class="form-check-input" type="checkbox" name="category" value="food">
				  <span class="form-check-label">
				   Food
				  </span>
				</label>  <!-- form-check.// -->
				</label>  <!-- form-check.// -->
				<label class="form-check">
				 <input class="form-check-input" type="checkbox"name="category" value="makeup"></a>
				  <span class="form-check-label">
				   Makeup
				  </span>
				</label>  <!-- form-check.// -->
				<label class="form-check">
				  <input class="form-check-input" type="checkbox" name="category" value="shoe">
				  <span class="form-check-label">
				   Shoes
				  </span>
				</label>  <!-- form-check.// -->
				<label class="form-check">
				  <input class="form-check-input" type="checkbox" name="category"  value="technology">
				  <span class="form-check-label">
				   Technology
				  </span>
				</label>  <!-- form-check.// -->
				<input type="submit" class="btn btn-outline-info btn-sm pull-right" style="background-color:#F9E7E7; color:black; border: none; font-size:15px" value="Choose a Category"></>
 <%--    	</form:form> --%>
		</form>	
		</div> <!-- card-body.// -->
	</article> <!-- card-group-item.// -->
	
	
	<article class="card-group-item">
		<header class="card-header">
			<h6 class="title">Choose type </h6>
		</header>
		<div class="card-body">
			<label class="form-check">
			  <input class="form-check-input" type="radio" name="exampleRadio" value="">
			  <span class="form-check-label">
			    First hand items
			  </span>
			</label>
			<label class="form-check">
			  <input class="form-check-input" type="radio" name="exampleRadio" value="">
			  <span class="form-check-label">
			    Brand new items
			  </span>
			</label>
			<label class="form-check">
			  <input class="form-check-input" type="radio" name="exampleRadio" value="">
			  <span class="form-check-label">
			    Some other option
			  </span>
			</label>
		</div> <!-- card-body.// -->
	</article> <!-- card-group-item.// -->
</div> <!-- card.// -->




<div class="card">
	<article class="card-group-item">
		<header class="card-header">
			<h6 class="title">Range input </h6>
		</header>
			<div class="card-body">
			<input class="custom-range" min="0" max="100" name="" type="range">
			<div class="form-row">
			<div class="form-group col-md-6">
			  <label>Min</label>
			  <input type="number" class="form-control" id="inputEmail4" placeholder="$0">
			</div>
			<div class="form-group col-md-6 text-right">
			  <label>Max</label>
			  <input type="number" class="form-control" placeholder="$1,0000">
			</div>
			</div>
			</div> <!-- card-body.// -->
	</article> <!-- card-group-item.// -->
	
</div> 

</div>
	
<div class="rightBox">
<div class="content"> 
 	
				<div class="row">
				<c:forEach var="i" items="${products}" >
	
				<div class="col-md-4" >
				 
					<figure class="card card-product">
						<div class="img-wrap">
						<div class="img-container">
							<img  class="img-fluid" style= "height: 200px; float: center" src="<c:out value="${i.pictureUrl}"/>"/></div>   
						</div>
						<figcaption class="info-wrap">
								<h4 class="title"><c:out value="${i.name}"/></h4>
								<p class="desc"><c:out value="${i.description}"/></p>
								<div class="rating-wrap">
									<ul class="rating-stars">
										<li style="width:80%" class="stars-active"> 
											<i class="fa fa-star "></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
										</li>
										<li>
											<i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i> 
										</li>
									</ul>

								</div> <!-- rating-wrap.// -->
						</figcaption>
						<div class="bottom-wrap">
							<a href="/cart/${i.id}" class="btn btn-sm  float-right" style="background-color:#E5CFCF">Order Now</a>	
							<a href="/show/${i.id}" class="btn btn-sm  float-right" style="background-color:#E5CFCF">Details</a>	
							<div class="price-wrap h5">
								<span class="price-new">$<c:out value="${i.price}"/></span>
							</div> <!-- price-wrap.// -->
						</div> <!-- bottom-wrap.// -->
					</figure>
				
				</div> <!-- col // -->
			
				</c:forEach>
				</div> 
	
			
	</div>
	</div>
	</div>
</div>
</body>
</html>