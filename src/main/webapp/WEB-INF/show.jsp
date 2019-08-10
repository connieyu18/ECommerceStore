<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<link rel="stylesheet" type="text/css" href="css/show.css">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
	<script src="https://use.fontawesome.com/c560c025cf.js"></script>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/3.2.1/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   




<style>
body{
/* 	font-family: 'Cormorant Infant', serif;
 */	background-color: #F9F4F5; 
	width:100%; 
	font-family: 'Montserrat', sans-serif;
	} 
 h1, h2, h3 {
 font-family: 'Montserrat', sans-serif;
 }
 span{
 	font-weight: bold;
 }
	#card-product-detail{
			width:70%; 
			text-align:center;
			 margin:0px auto; 
		}
	
	.review-container{
		margin:30px auto; 
		position: relative;
		text-align:center;
	/* 	margin:30px;  */
		border-color: 1px solid gray; 
		width: 50%; 
		
	}
	.post-container{
    border:1px solid black;
    list-style: none;
    margin: 7px;
    padding:7px; 
    border:none; 
    height:80px;
    margin: 10px 30px;
    box-shadow: 1px 1px 6px rgba(0, 0, 0, 0.1);
    
	}
	#review-dashboard{
		height: 500px;
		overflow-y: scroll;  
	}
	.fa-star{
		color:tan; 
	}
	.starrating > input {display: none;}  /* Remove radio buttons */
	
	.starrating > label:before { 
	  content: "\f005"; /* Star */
	  margin: 2px;
	  font-size: 2em;
	  font-family: FontAwesome;
	  display: inline-block; 
	}
	
	.starrating > label
	{
	  color: #222222; /* Start color when not clicked */
	}
	
	.starrating > input:checked ~ label
	{ color: tan ; } /* Set yellow color when star checked */
	
	.starrating > input:hover ~ label
	{ color:tan ;  } /* Set yellow color when star hover */

	
</style>




</head>
<body>

<!------ Include the above in your HEAD tag ---------->
<div class="header">
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
						<li class="nav-item active"><a class="nav-link" href="/">Home
								<span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="/productList">Product
								List</a></li>
						<li class="nav-item"><a class="nav-link" href="/cart">Cart</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="/newEvent">Add
								Event</a></li>
					</ul>
					<div class="form-inline my-2 my-lg-0">
						<form class="float-right" method="POST" action="/logout">
							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
							<button type="submit" class="nav-link" style="color: purple">Logout!</button>
						</form>
						<input class="form-control mr-sm-2" type="search"
							style="background-color: #F9E7E7; color: white; border-color: white;"
							placeholder="Search">
						<button class="btn btn-outline-success my-2 my-sm-0"
							style="border-color: pink; color: black" type="submit">Search</button>
					</div>
				</div>
			</nav>
			</div>


<%-- 	
<div class="card">
	<div class="row">
		<aside class="col-sm-5 border-right">
<article class="gallery-wrap"> 
<div class="img-big-wrap">
  <div> <a href="#"> <img  class="img-fluid" src="<c:out value="${product.pictureUrl}"/>"/></a></div>
</div> <!-- slider-product.// -->
<div class="img-small-wrap">
<!--   <div class="item-gallery"> <img  src="../img/redrose.jpg"> </div>
  <div class="item-gallery"> <img  src="../img/pinkrose.jpg"> </div>
  <div class="item-gallery"> <img  src="../img/coffeecake.jpg"> </div>
  <div class="item-gallery"> <img  src="../img/butterflycake.jpg"> </div> -->
</div> <!-- slider-nav.// -->
</article> <!-- gallery-wrap .end// -->
		</aside>
		<aside class="col-sm-7">
<article class="card-body p-5">
	<h3 class="title mb-3"><c:out value="${product.name}"/></h3> --%>
	<div class="reviews">
	
	
	 

	   
		<h1 style="text-align: center; color: gray">Product Details</h1>
	</div>
</div>
<div class="container">
	<div class="card" id="card-product-detail">
		<div class="row">
			<aside class="col-sm-5 border-right">
				<article class="gallery-wrap">
					<div class="img-big-wrap">
						<div>
							<a href="#"> <img class="img-fluid"
								src="<c:out value="${product.pictureUrl}"/>" /></a>
						</div>
					</div>
					<!-- slider-product.// -->
<!-- 					<div class="img-small-wrap">
						<div class="item-gallery">
							<img src="../img/redrose.jpg">
						</div>
						<div class="item-gallery">
							<img src="../img/pinkrose.jpg">
						</div>
						<div class="item-gallery">
							<img src="../img/coffeecake.jpg">
						</div>
						<div class="item-gallery">
							<img src="../img/butterflycake.jpg">
						</div>
					</div> -->
					<!-- slider-nav.// -->
				</article>
				<!-- gallery-wrap .end// -->
			</aside>
			<aside class="col-sm-7">
				<article class="card-body p-5">
					<h3 class="title mb-3">
						<c:out value="${product.name}" /></h3>
						<p>Star Rating:
                    <c:set var = "Avgstars" value = "${avgRating}"  />
                    	<c:choose>	
						<c:when test = "${Avgstars == 1}"> 
                            <i class="fa fa-star"></i>
                       </c:when>
                       <c:when test = "${Avgstars == 2}"> 
                            <i class="fa fa-star"></i><i class="fa fa-star"></i>
                       </c:when>
                       <c:when test = "${Avgstars ==3}"> 
                            <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
                       </c:when>
                       <c:when test = "${Avgstars==4}"> 
                            <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
                       </c:when>
                       <c:when test = "${Avgstars==5}"> 
                            <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
                       </c:when>
					</c:choose>  
					</p>

					<p class="price-detail-wrap">
						<span class="price h3 text-warning"> <span class="currency">US
								$</span><span class="num"><c:out value="${product.price}" /></span>
						</span> <span>/each</span>
					</p>
					<!-- price-detail-wrap .// -->
					<dl class="item-property">
						<dt>Description</dt>
						<dd>
							<p>
								<c:out value="${product.description}" />
							</p>
						</dd>
					</dl>
					<!-- <dl class="param param-feature">
						<dt>Model#</dt>
						<dd>12345611</dd>
					</dl>
					item-property-hor .//
					<dl class="param param-feature">
						<dt>Color</dt>
						<dd>Black and white</dd>
					</dl> -->
					<!-- item-property-hor .// -->
					<dl class="param param-feature">
						<dt>Shipping</dt>
						<dd>4-5 days</dd>
					</dl>
					<!-- item-property-hor .// -->

					<hr>
					<div class="row">
						<div class="col-sm-5">
							<dl class="param param-inline">
								<dt>Quantity:
								<dd>
									<select class="form-control form-control-sm"
										style="width: 70px;">
										<option>1</option>
										<option>2</option>
										<option>3</option>
									</select>
								</dd></dt>
							</dl>
							<!-- item-property .// -->
						</div>
						<!-- col.// -->
	<!-- 					<div class="col-sm-7">
							<dl class="param param-inline">
								<dt>Size:</dt>
								<dd>
									<label class="form-check form-check-inline"> <input
										class="form-check-input" type="radio"
										name="inlineRadioOptions" id="inlineRadio2" value="option2">
										<span class="form-check-label">SM</span>
									</label> <label class="form-check form-check-inline"> <input
										class="form-check-input" type="radio"
										name="inlineRadioOptions" id="inlineRadio2" value="option2">
										<span class="form-check-label">MD</span>
									</label> <label class="form-check form-check-inline"> <input
										class="form-check-input" type="radio"
										name="inlineRadioOptions" id="inlineRadio2" value="option2">
										<span class="form-check-label">XXL</span>
									</label>
								</dd>
							</dl>
							item-property .//
						</div> -->
						<!-- col.// -->
					</div>
					<!-- row.// -->
					<hr>
					<a href="/cart/${id}" class="btn btn-lg btn-primary text-uppercase"
						style="background-color: pink; border: none;"> Buy now </a> <a
						href="/cart/${id}"
						class="btn btn-lg btn-outline-primary text-uppercase"
						style="border-color: pink; color: gray"> <i
						class="fa fa-shopping-cart"></i> Add to cart
					</a>
				</article>
				<!-- card-body.// -->
			</aside>
			<!-- col.// -->
		</div>
		<!-- row.// -->
	</div>
	<!-- card.// -->


</div>
<!--container.//-->



<!-- rating show -->

 
<div class="review-container" >
 <form:form class="container p-3 bg-light col-6 d-inline-block align-top" method="POST" action="/createReview" modelAttribute="review">
    	<h2>Leave a rating</h2>
         <div class="form-group row">
            <label path="rating" class="col-sm-2 col-form-label" >Rating: </label>
           <form:errors path="rating" />
			<div class="col-sm-3">
			<%-- 	<form:input path="rating" class="form-control" placeholder="Enter your rating here..." /> --%>

			<div class="container">
        <div class="starrating risingstar d-flex justify-content-center flex-row-reverse">
            <input type="radio" id="star5" name="rating" value="5" /><label for="star5" title="5 star"></label>
            <input type="radio" id="star4" name="rating" value="4" /><label for="star4" title="4 star"></label>
            <input type="radio" id="star3" name="rating" value="3" /><label for="star3" title="3 star"></label>
            <input type="radio" id="star2" name="rating" value="2" /><label for="star2" title="2 star"></label>
            <input type="radio" id="star1" name="rating" value="1" /><label for="star1" title="1 star"></label>
        </div>
  </div>	
			
			
			</div>
            <form:hidden path="product.id" value="${product.getId()}"/>
           </div>
           
           
           

        <div class="form-group row">
			<form:label path="comment" class="col-sm-2 col-form-label" >Comment:</form:label>
			<form:errors path="comment" />
			<div class="col-sm-10">
				<form:input path="comment" class="form-control" placeholder="Enter your comment here..." />
			</div>
		</div>
     
       
         <input class="btn btn-md btn-primary text-uppercase" style="background-color: pink; border: none" type="submit" value="Add Review"/>    
         
 		<br>
 	</form:form>
 	</div>
 	
 	<div class="review-container" >
 	
 	<div class="card" id="review-dashboard" style="height:500px; overflow-y: scroll">
            <table class="table overflow-container">
                <thead class="text-muted">
                	<h1>Reviews for <c:out value="${product.getName()}" /> </h1>
                	
                	  <h3>Average Star Rating:
                    <c:set var = "Avgstars" value = "${avgRating}"  />
                    	<c:choose>	
						<c:when test = "${Avgstars == 1}"> 
                            <i class="fa fa-star"></i>
                       </c:when>
                       <c:when test = "${Avgstars == 2}"> 
                            <i class="fa fa-star"></i><i class="fa fa-star"></i>
                       </c:when>
                       <c:when test = "${Avgstars ==3}"> 
                            <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
                       </c:when>
                       <c:when test = "${Avgstars==4}"> 
                            <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
                       </c:when>
                       <c:when test = "${Avgstars==5}"> 
                            <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
                       </c:when>
					</c:choose>  
                    </h3>
                    
                </thead>
                <tbody>
                <c:forEach var="i" items="${reviews}">
                    <tr>
      				 <div class="post-container">
				 <c:set var = "stars" value = "${i.getRating() }"  />
				  <c:set var = "averageRatingCount" value = "${avgRating}" scope="session" />
				 
				 
					<c:choose>	
						<c:when test = "${stars == 1}"> 
                            <i class="fa fa-star"></i>
                       </c:when>
                       <c:when test = "${stars == 2}"> 
                            <i class="fa fa-star"></i><i class="fa fa-star"></i>
                       </c:when>
                       <c:when test = "${stars ==3}"> 
                            <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
                       </c:when>
                       <c:when test = "${stars==4}"> 
                            <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
                       </c:when>
                       <c:when test = "${stars==5}"> 
                            <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
                       </c:when>
					</c:choose>  
                      
<%--                        <c:out value="${i.getRating() }" /> 
 --%>                       &nbsp; <span><c:out value="${i.getComment() }" /><span>
 						<p>By <c:out value="${i.getUser().getFirstName()}" /> </p>
<%--  						<form  method="POST" action="/deleteReview/<c:out value="${i.id}"/>">
							<input type="hidden" name="product.id"
								value="${product.getId()}" />
							<button type="submit">Delete</button>
						</form> --%>
  						<p><a href="/deleteReview/<c:out value="${i.id}"/>">Delete</a></p>

                       </div>  
                    </tr>
                    </c:forEach>
                    
                 
                </tbody>
            </table>
        </div>
 	</div>
 




<br>
<br>
<br>
<div class="footer">
	<!-- <article class="bg-secondary mb-3" >  
 -->
	<div class="card-body text-center">
		<h4 class="text-black">
			Lele rose <br>
		</h4>
		<p class="h5 text-black">If you're particularly strapped for time,
			we can customize gifts to add a personal touch to any of your gift!</p>
		<br>
		<p>
			<a class="btn btn-warning"
				style="background-color: #E5E7E9; border: none; color: black"
				target="_blank" href="/home"> LeleRose.com <i
				class="fa fa-window-restore "></i></a>
		</p>
	</div>

	<br>
	<br>
	<br>

</div>

</body>
</html>