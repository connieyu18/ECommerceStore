<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link
	href="https://fonts.googleapis.com/css?family=Parisienne&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Parisienne|Rochester&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Josefin+Slab|Parisienne|Rochester&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Josefin+Slab|Markazi+Text|Parisienne|Petit+Formal+Script|Pompiere|Rochester&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cormorant+Infant|Josefin+Slab|Markazi+Text|Parisienne|Petit+Formal+Script|Pompiere|Rochester&display=swap"
	rel="stylesheet">
=======
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
    
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<link href="https://fonts.googleapis.com/css?family=Parisienne&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Parisienne|Rochester&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Josefin+Slab|Parisienne|Rochester&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Josefin+Slab|Markazi+Text|Parisienne|Petit+Formal+Script|Pompiere|Rochester&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">

<link href="https://fonts.googleapis.com/css?family=Cormorant+Infant|Josefin+Slab|Markazi+Text|Parisienne|Petit+Formal+Script|Pompiere|Rochester&display=swap" rel="stylesheet">
>>>>>>> 29dba372ee2b2fcfb250c8fb142690029aa33c95
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<<<<<<< HEAD
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
=======
	<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
    crossorigin="anonymous">
   <link rel="stylesheet" type="text/css" href="css/productList.css">
    
>>>>>>> 29dba372ee2b2fcfb250c8fb142690029aa33c95

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous">
	
</script>
<<<<<<< HEAD
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.wrapper {
	width: 100%;
	font-family: 'Cormorant Infant', serif;
	;
}

body {
	background-image:
		url("https://images.unsplash.com/photo-1480511361210-b1b966c8d614?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60");
	background-repeat: no-repeat;
	/* 		 background-attachment: fixed; */
	background-size: 100% 100%;
	background-opacity: 0.2;
}

a, p {
	font-size: 20px;
}

.header {
	height: 350px;
	background-color: #F9F4F5;
	border: none;
	padding: 10px;
	margin-bottom: 70px;
}

.content {
	margin: 0% 5%;
	padding: 20px;
}

.img-wrap {
	max-width: 100%;
	max-height: 300px;
	margin: 3%;
}

.title {
	text-align: left;
	margin: 5%;
}

.img-container {
	
}

max-height
:
200px;

			
		
}
.img-fluid {
	position: relative;
	float: center;
}

.bottomBox {
	position: relative;
	display: inline-block;
}

.rightBox {
	position: relative;
	display: inline-block;
	width: 80%;
	float: center;
}

.leftBox {
	position: relative;
	display: inline-block;
	max-width: 20%;
	float: left;
}

.fa-star {
	color: tan;
}

.card-product {
	border: 0px 25% solid black;
	padding: 7px;
}

a {
	margin: 2px;
}
</style>
</head>
<body>
	<div class="wrapper">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<img class="img" style="width: 120px; height: 80px"
				src="../img/mylogo.png"> <a class="navbar-brand" href="#">Lele
				Rose</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarTogglerDemo02"
				aria-controls="navbarTogglerDemo02" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
				<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
					<li class="nav-item active"><a class="nav-link" href="/home">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="/productList">Product
							List</a></li>
					<li class="nav-item"><a class="nav-link" href="/cart">Cart</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="/newEvent">Add
							Event</a></li>
					<li class="nav-item"><a class="nav-link" href="/addProduct">Add
							Product</a></li>
				</ul>

				<div class="form-inline my-2 my-lg-0">
					<form class="float-right" method="POST" action="/logout">
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
						<button type="submit" class="btn btn-danger">Logout!</button>
					</form>
					<form action="/search" method="post">

						<%-- 		     <form:form method="POST" action="/search" modelAttribute="searchProduct">
 --%>
						<input name="name" class="form-control mr-sm-2" type="search"
							style="background-color: #F9E7E7; color: white; border-color: white;"
							placeholder="Search" />
						<button class="btn btn-outline-success my-2 my-sm-0"
							style="border-color: pink; color: black" type="submit">Search</button>
					</form>

				</div>
=======
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
>>>>>>> 29dba372ee2b2fcfb250c8fb142690029aa33c95
		</nav>
		<div class="title">

			<span style="font-size: 25px; right: 10px">WELCOME</span>
			<h1
				style="color: #E5CFCF; font-size: 60px; font-family: 'Petit Formal Script', cursive;">
				<c:out value="${user.firstName}" />
				<c:out value="${user.lastName}" />
			</h1>
			<br> <br>

			<h1 style="float: center; color: gray">All Products</h1>


		</div>
	</div>
	<div class="bottomBox">
		<div class="leftBox">

			<!--   SIDEBAR  -->
			<div class="card">
				<article class="card-group-item">
					<header class="card-header">
						<h6 class="title">Categories</h6>
					</header>
					<div class="card-body">
						<form action="/showCategoryProduct" method="post">

							<%-- 			<form:form method="POST" action="/showCategoryProduct" modelAttribute="showProductCat">
 --%>
<<<<<<< HEAD
							<label class="form-check"> <input
								class="form-check-input" type="checkbox" name="category"
								value="flowers"> <span class="form-check-label">
									Flowers </span>
							</label>
							<!-- form-check.// -->
							<label class="form-check"> <input
								class="form-check-input" type="checkbox" name="category"
								value="clothing"> <span class="form-check-label">
							</span>
							</label>
							<!-- form-check.// -->
							<label class="form-check"> <input
								class="form-check-input" type="checkbox" name="category"
								value="food"> <span class="form-check-label">
									Food </span>
							</label>
							<!-- form-check.// -->
							</label>
							<!-- form-check.// -->
							<label class="form-check"> <input
								class="form-check-input" type="checkbox" name="category"
								value="makeup"></a> <span class="form-check-label">
									Makeup </span>
							</label>
							<!-- form-check.// -->
							<label class="form-check"> <input
								class="form-check-input" type="checkbox" name="category"
								value="shoe"> <span class="form-check-label">
									Shoes </span>
							</label>
							<!-- form-check.// -->
							<label class="form-check"> <input
								class="form-check-input" type="checkbox" name="category"
								value="technology"> <span class="form-check-label">
									Technology </span>
							</label>
							<!-- form-check.// -->
							<input type="submit"
								class="btn btn-outline-info btn-sm pull-right"
								style="background-color: #F9E7E7; color: black; border: none; font-size: 15px"
								value="Choose a Category"></>
							<%--    	</form:form> --%>
						</form>
					</div>
					<!-- card-body.// -->
				</article>
				<!-- card-group-item.// -->


				<article class="card-group-item">
					<header class="card-header">
						<h6 class="title">Choose type</h6>
					</header>
					<div class="card-body">
						<label class="form-check"> <input class="form-check-input"
							type="radio" name="exampleRadio" value=""> <span
							class="form-check-label"> First hand items </span>
						</label> <label class="form-check"> <input
							class="form-check-input" type="radio" name="exampleRadio"
							value=""> <span class="form-check-label"> Brand
								new items </span>
						</label> <label class="form-check"> <input
							class="form-check-input" type="radio" name="exampleRadio"
							value=""> <span class="form-check-label"> Some
								other option </span>
						</label>
					</div>
					<!-- card-body.// -->
				</article>
				<!-- card-group-item.// -->
			</div>
			<!-- card.// -->

=======
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
>>>>>>> 29dba372ee2b2fcfb250c8fb142690029aa33c95




<<<<<<< HEAD
			<div class="card">
				<!-- <article class="card-group-item">
		<header class="card-header"><h6 class="title">Similar category </h6></header>
		<div class="filter-content">
			<div class="list-group list-group-flush">
			  <a href="#" class="list-group-item">Cras justo odio <span class="float-right badge badge-secondary round">142</span> </a>
			  <a href="#" class="list-group-item">Dapibus ac facilisis  <span class="float-right badge badge-secondary round">3</span>  </a>
			  <a href="#" class="list-group-item">Morbi leo risus <span class="float-right badge badge-secondary round">32</span>  </a>
			  <a href="#" class="list-group-item">Another item <span class="float-right badge badge-secondary round">12</span>  </a>
			</div>  list-group .//
		</div>
	</article> card-group-item.//
	<article class="card-group-item">
		<header class="card-header"><h6 class="title">Color check</h6></header>
		<div class="filter-content">
			<div class="card-body">
				<label class="btn btn-danger"style="background-color:tan; border:none">
				  <input class="" type="checkbox" name="myradio" value="">
				  <span class="form-check-label">Tan</span>
				</label>
				<label class="btn btn-success" style="background-color:pink; border:none">
				  <input class="" type="checkbox" name="myradio" value="">
				  <span class="form-check-label">Pink</span>
				</label>
				<label class="btn btn-primary" style="background-color:gray; border:none">
				  <input class="" type="checkbox"  name="myradio" value="">
				  <span class="form-check-label">Gray</span>
				</label>
			</div> card-body.//
		</div>
	</article> card-group-item.// -->
			</div>
			<!-- card.// -->


			<div class="card">
				<article class="card-group-item">
					<header class="card-header">
						<h6 class="title">Range input</h6>
					</header>
					<div class="card-body">
						<input class="custom-range" min="0" max="100" name="" type="range">
						<div class="form-row">
							<div class="form-group col-md-6">
								<label>Min</label> <input type="number" class="form-control"
									id="inputEmail4" placeholder="$0">
							</div>
							<div class="form-group col-md-6 text-right">
								<label>Max</label> <input type="number" class="form-control"
									placeholder="$1,0000">
							</div>
						</div>
					</div>
					<!-- card-body.// -->
				</article>
				<!-- card-group-item.// -->
				<!-- <article class="card-group-item">
		<header class="card-header">
			<h6 class="title">Selection </h6>
		</header>
			<div class="card-body">
				<div class="custom-control custom-checkbox">
					<span class="float-right badge badge-light round">52</span>
				  	<input type="checkbox" class="custom-control-input" id="Check1">
				  	<label class="custom-control-label" for="Check1">Samsung</label>
				</div> form-check.//

				<div class="custom-control custom-checkbox">
					<span class="float-right badge badge-light round">132</span>
				  	<input type="checkbox" class="custom-control-input" id="Check2">
				 	<label class="custom-control-label" for="Check2">Black berry</label>
				</div> form-check.//

				<div class="custom-control custom-checkbox">
					<span class="float-right badge badge-light round">17</span>
				  	<input type="checkbox" class="custom-control-input" id="Check3">
				  	<label class="custom-control-label" for="Check3">Samsung</label>
				</div> form-check.//

				<div class="custom-control custom-checkbox">
					<span class="float-right badge badge-light round">7</span>
				  	<input type="checkbox" class="custom-control-input" id="Check4">
				  	<label class="custom-control-label" for="Check4">Other Brand</label>
				</div> form-check.//
			</div> card-body.//
	</article> card-group-item.// -->
			</div>
			<!-- card.// -->

		</div>

		<div class="rightBox">
			<div class="content">
=======
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
>>>>>>> 29dba372ee2b2fcfb250c8fb142690029aa33c95

				<div class="row">
<<<<<<< HEAD
					<c:forEach var="i" items="${products}">
						<%-- 	 <c:if test="${product.getCategory()!=product.category}"> --%>

						<div class="col-md-4">

							<figure class="card card-product">
								<div class="img-wrap">
									<div class="img-container">
										<img class="img-fluid" style="height: 200px; float: center"
											src="<c:out value="${i.pictureUrl}"/>" />
									</div>
								</div>
								<figcaption class="info-wrap">
									<h4 class="title">
										<c:out value="${i.name}" />
									</h4>
									<p class="desc">
										<c:out value="${i.description}" />
									</p>
									<div class="rating-wrap">
										<ul class="rating-stars">
											<li style="width: 80%" class="stars-active"><i
												class="fa fa-star "></i><i class="fa fa-star"></i><i
												class="fa fa-star"></i><i class="fa fa-star"></i><i
												class="fa fa-star"></i></li>
											<li><i class="fa fa-star"></i><i class="fa fa-star"></i><i
												class="fa fa-star"></i><i class="fa fa-star"></i><i
												class="fa fa-star"></i></li>
										</ul>
										<%-- 					<div class="label-rating"><c:out value="${i.review}"/></div>
									<div class="label-rating"><c:out value="${i.order}"/></div> --%>
									</div>
									<!-- rating-wrap.// -->
								</figcaption>
								<div class="bottom-wrap">
									<a href="/cart/${i.id}" class="btn btn-sm  float-right"
										style="background-color: #E5CFCF">Order Now</a> <a
										href="/show/${i.id}" class="btn btn-sm  float-right"
										style="background-color: #E5CFCF">Details</a>
									<div class="price-wrap h5">
										<span class="price-new">$<c:out value="${i.price}" /></span>
									</div>
									<!-- price-wrap.// -->
								</div>
								<!-- bottom-wrap.// -->
							</figure>

						</div>
						<!-- col // -->

					</c:forEach>
				</div>


			</div>
		</div>
=======
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
>>>>>>> 29dba372ee2b2fcfb250c8fb142690029aa33c95
	</div>
	</div>
</body>
</html>