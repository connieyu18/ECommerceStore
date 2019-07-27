<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
      <link href="https://fonts.googleapis.com/css?family=Parisienne&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Parisienne|Rochester&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Josefin+Slab|Markazi+Text|Parisienne|Petit+Formal+Script|Rochester&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Cormorant+Infant|Josefin+Slab|Markazi+Text|Parisienne|Petit+Formal+Script|Pompiere|Rochester&display=swap" rel="stylesheet">
      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://use.fontawesome.com/c560c025cf.js"></script>
</head>
	<style> 
		body{
			font-family: 'Cormorant Infant', serif;
			background-color: #F9F4F5; 
			} 
		.quantity {
	    float: left;
	    margin-right: 15px;
	    background-color: #eee;
	    position: relative;
	    width: 80px;
	    overflow: hidden
		}
		a,p{
		font-size:25px;
		}
		
		.quantity input {
		    margin: 0;
		    text-align: center;
		    width: 15px;
		    height: 15px;
		    padding: 0;
		    float: right;
		    color: #000;
		    font-size: 20px;
		    border: 0;
		    outline: 0;
		    background-color: #F6F6F6
		}
		
		.quantity input.qty {
		    position: relative;
		    border: 0;
		    width: 100%;
		    height: 40px;
		    padding: 10px 25px 10px 10px;
		    text-align: center;
		    font-weight: 400;
		    font-size: 15px;
		    border-radius: 0;
		    background-clip: padding-box
		}
		
		.quantity .minus, .quantity .plus {
		    line-height: 0;
		    background-clip: padding-box;
		    -webkit-border-radius: 0;
		    -moz-border-radius: 0;
		    border-radius: 0;
		    -webkit-background-size: 6px 30px;
		    -moz-background-size: 6px 30px;
		    color: #bbb;
		    font-size: 20px;
		    position: absolute;
		    height: 50%;
		    border: 0;
		    right: 0;
		    padding: 0;
		    width: 25px;
		    z-index: 3
		}
		
		.quantity .minus:hover, .quantity .plus:hover {
		    background-color: #dad8da
		}
		
		.quantity .minus {
		    bottom: 0
		}
		.shopping-cart {
		    margin-top: 20px;
		}

		.credit-card{
			width: 30%;
			height:500px; 
			position: relative; 
			top: 50px; 
			margin: 0px auto; 
			background-image: url("../img/pinkrose1.JPG"); 
			
		}
	</style>
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
		        <a class="nav-link" href="/newEvent">Add Event</a>
		      </li>
		    </ul>
		    <form class="form-inline my-2 my-lg-0">
		     	<a class="nav-link" href="/logout" style="color:purple" >Logout</a>
		    
		      <input class="form-control mr-sm-2" type="search" style="background-color: #F9E7E7; color: white; border-color: white;"  placeholder="Search">
		      <button class="btn btn-outline-success my-2 my-sm-0"  style="border-color:pink; color: black" type="submit">Search</button>
		    </form>
		  </div>
		</nav>
		<div class="title"> 
		
		<h1 style="font-family: 'Petit Formal Script', cursive">Welcome, <c:out value="${user.firstName}" /> <c:out value="${user.lastName}" /></h1>
			<h1 style="text-align: center; margin:30px"> Check Out</h1>
		</div>
	</div> 

<div class="container">
   <div class="card shopping-cart">
            <div class="card-header  text-light" style="background-color:#DED6D6">
                <h2><i class="fa fa-shopping-cart" aria-hidden="true"></i>
               Shopping cart</h2> 
               <h2> <a href="/productList" class="btn btn-outline-info btn-sm pull-right" style="background-color:#F9E7E7; color:black; border: none; font-size:20px">Continue shopping</a></h2> 
                <div class="clearfix"></div>
            </div>
            
            <div class="card-body">
                    <!-- PRODUCT -->
                    <div class="row">
                    <c:set var="total" value="0"></c:set>
                    <c:forEach var="product" items="${sessionScope.cart}" >
			        <c:set var="i" value="${product.getKey()}"></c:set>
			        <c:set var="total" value="${total + i.price * product.getValue()}"></c:set>
			 
                        <div class="col-12 col-sm-12 col-md-2 text-center">
                                <img class="img-responsive" src="<c:out value="${i.pictureUrl}"/>" alt="prewiew" width="120" height="80">
                        </div>
                        <div class="col-12 text-sm-center col-sm-12 text-md-left col-md-6">
                            <h4 class="product-name"><strong><c:out value="${i.name}"/></strong></h4>
                            <h4>
                                <small><c:out value="${i.description}"/></small>
                            </h4>
                        </div>
                        <div class="col-12 col-sm-12 text-sm-center col-md-4 text-md-right row">
                            <div class="col-3 col-sm-3 col-md-6 text-vmd-right" style="padding-top: 5px">
                                <h4><strong><c:out value="${i.price}"/> <span class="text-muted">x</span></strong></h4>
                            </div>
                            <div class="col-4 col-sm-4 col-md-4">
                                <div class="quantity">
                                    <a href = "/cart/<c:out value="${i.id}"/>"><input type="button" value="+" class="plus"></a>
                                    <input type="number" step="1" max="99" min="1" value="<c:out value ="${product.getValue()}"/>" title="Qty" class="qty"
                                           size="6">
                                    <a href = "/cart/remove/<c:out value="${i.id}"/>"><input type="button" value="-" class="minus"></a>
                                </div>
                            </div>
                            <div class="col-2 col-sm-2 col-md-2 text-right">
                                 <a href="/remove/${i.id}" onclick="return confirm('Are you sure?')"><button type="button" class="btn btn-outline-danger btn-xs">
                                   <i class="fa fa-trash" aria-hidden="true"></i>
                                </button></a> 
                   
	
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                    <hr>
                    
                    
                    
                <div class="pull-right">
                    <a href="" class="btn btn-outline-secondary pull-right">
                        Update shopping cart
                    </a>
                </div>
            </div>
            <div class="card-footer">
                
                
                <div class="pull-right" style="margin: 10px">
                    <a href="" class="btn btn-success pull-right" style="background-color: #f686a3; color:black; border:black; font-size:20px">Checkout</a>
                    <div class="pull-right" style="margin: 5px">
                    
        
                        <h3>Total price: <b>${total}</b></h3>
                    </div>
                </div>
            </div>
        </div>
       </div>
 
   <!--  CREDIT CARD -->
		<article class="credit-card">
		<div class="card-body p-5">
<!-- 		<p> <i class="fab fa-cc-visa"></i> 
			<img src="images/icons/pay-visa-el.png"> 
		   <img src="images/icons/pay-mastercard.png">
		   <img src="images/icons/pay-american-ex.png"> </p>
		<p class="alert alert-success">Some text success or error</p>
		 -->
		<form role="form">
		<div class="form-group">
		<label for="username">Full name (on the card)</label>
		<div class="input-group">
			<div class="input-group-prepend">
				<span class="input-group-text"><i class="fa fa-user"></i></span>
			</div>
			<input type="text" class="form-control" name="username" placeholder="" required="">
		</div> <!-- input-group.// -->
		</div> <!-- form-group.// -->
		
		<div class="form-group">
		<label for="cardNumber">Card number</label>
		<div class="input-group">
			<div class="input-group-prepend">
				<span class="input-group-text"><i class="fa fa-credit-card"></i></span>
			</div>
			<input type="text" class="form-control" name="cardNumber" placeholder="">
		</div> <!-- input-group.// -->
		</div> <!-- form-group.// -->
		
		<div class="row">
		    <div class="col-sm-8">
		        <div class="form-group">
		            <label><span class="hidden-xs">Expiration</span> </label>
		        	<div class="form-inline">
		        		<select class="form-control" style="width:45%">
						  <option>MM</option>
						  <option>01 - Janiary</option>
						  <option>02 - February</option>
						  <option>03 - February</option>
						</select>
			            <span style="width:10%; text-align: center"> / </span>
			            <select class="form-control" style="width:45%">
						  <option>YY</option>
						  <option>2018</option>
						  <option>2019</option>
						</select>
		        	</div>
		        </div>
		    </div>
		    <div class="col-sm-4">
		        <div class="form-group">
		            <label data-toggle="tooltip" title="" data-original-title="3 digits code on back side of the card">CVV <i class="fa fa-question-circle"></i></label>
		            <input class="form-control" required="" type="text">
		        </div> <!-- form-group.// -->
		<button class="subscribe btn btn-primary btn-block" style="background-color:#FADBD8" type="button"> Confirm  </button>
		</form>
		</div> <!-- card-body.// -->
		</article> <!-- card.// -->

        

</div>
</body>
</html>