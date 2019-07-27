<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
    
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<link href="https://fonts.googleapis.com/css?family=Parisienne&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Parisienne|Rochester&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Josefin+Slab|Parisienne|Rochester&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Josefin+Slab|Markazi+Text|Parisienne|Petit+Formal+Script|Pompiere|Rochester&display=swap" rel="stylesheet">
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

<script
    src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous">
</script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<style> 
		.wrapper{
			width:100%; 
			font-family: 'Cormorant Infant', serif;
;
		}
		body{
		background-image: url("https://images.unsplash.com/photo-1480511361210-b1b966c8d614?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=60"); 
		background-repeat: no-repeat;
		
/* 		 background-attachment: fixed; */

		background-size: 100% 100%;
		background-opacity: 0.2;
		}
		a,p{
		font-size:20px;
		}
		.header{
			height:350px; 
			 background-color:#F9F4F5; 
			 border: none;
			  
		}
		
		
		.content{
			margin: 0% 5%; 
			padding: 20px; 
		}
		.img-wrap{
			max-width:100%;
			max-height:300px;
			margin:  3%; 
		}
		.title{
			text-align: center; 
			margin: 5%; 
		}
		.img-container{}
			max-height:200px;
			
		}
		.img-fluid{
			position: relative; 
		 	float: center; 
		}
		.bottomBox{
			position: relative; 
			display:inline-block;
		}
		
		.rightBox{
			position: relative; 
			display:inline-block;
			width:80%; 
			float:center;
		}
		.leftBox{
			position: relative; 
			display:inline-block;
			max-width:20%;
			float:left; 
		}
		.fa-star{
			color: tan; 
		}
		.card-product{
			border:0px 25% solid black; 
			padding: 7px; 
		}
		a{
			margin: 2px; 
		}
		
		
		
	</style> 
</head>
<body>
<div class="wrapper"> 
	<div class="header">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<img class="img" style="width:120px;height:80px" src="../img/mylogo.png">
		  <a class="navbar-brand" href="#">Lele Rose</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		
		  <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
		    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
		      <li class="nav-item active">
		        <a class="nav-link" href="/home">Home <span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="/productList">Product List</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="/cart">Cart</a>
		      </li>
		       <li class="nav-item">
		        	<a class="nav-link" href="/blog">Blog</a>
		      </li>
		    </ul>
		    <form class="form-inline my-2 my-lg-0">
		      <input class="form-control mr-sm-2" type="search" placeholder="Search">
		      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		    </form>
		  </div>
		</nav>
		<div class="title"> 
		<h1 style="color: #E5CFCF; font-size: 60px; font-family: 'Petit Formal Script', cursive;" >Welcome, <c:out value="${user.firstName}" /> <c:out value="${user.lastName}" /></h1>
		<br> 
		
			<h1 style="float:center; color:gray" > Gifts from your Category</h1>
		</div>
	</div> 
<div class="bottomBox">
<div class="leftBox">



</div>
	
<div class="rightBox">
<div class="content"> 
 	
				<div class="row">
				<
				<c:forEach var="i" items="${products}" >
			<%-- 	 <c:if test="${product.getCategory()!=product.category}"> --%>
	
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
				<%-- 					<div class="label-rating"><c:out value="${i.review}"/></div>
									<div class="label-rating"><c:out value="${i.order}"/></div> --%>
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