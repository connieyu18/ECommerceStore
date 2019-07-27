<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
      
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://use.fontawesome.com/c560c025cf.js"></script>
      <link rel="stylesheet" type="text/css" href="css/cart.css">
      <link href="https://fonts.googleapis.com/css?family=Parisienne&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Parisienne|Rochester&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
      
      <link href="https://fonts.googleapis.com/css?family=Josefin+Slab|Markazi+Text|Parisienne|Petit+Formal+Script|Rochester&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Cormorant+Infant|Josefin+Slab|Markazi+Text|Parisienne|Petit+Formal+Script|Pompiere|Rochester&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        
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
		    <form class="form-inline my-2 my-lg-0">
		     	<a class="nav-link" href="/logout" style="color:purple" >Logout</a>
		    
		      <input class="form-control mr-sm-2" type="search" style="background-color: #F9E7E7; color: white; border-color: white;"  placeholder="Search">
		      <button class="btn btn-outline-success my-2 my-sm-0"  style="border-color:pink; color: black" type="submit">Search</button>
		    </form>
		  </div>
		</nav>
		<div class="title"> 
		
		<h1 style="font-family: 'Petit Formal Script', cursive">Welcome, <c:out value="${user.firstName}" /> <c:out value="${user.lastName}" /></h1>
			<h1 style="text-align: center; margin:30px"> Your Cart</h1>
		</div>
	</div> 
<div class="row">
   <div class="col-11">
      <div class="row">
        <div class="col-sm-8">
   			<div class="card-shopping-cart">
            <div class="card-header  text-light" style="background-color:#DED6D6">
                <h3><i class="fa fa-shopping-cart" aria-hidden="true"></i>
               Shopping cart</h3> 
               <p> <a href="/productList" class="btn btn-outline-info btn-sm pull-right" style="background-color:#F9E7E7; color:black; border: none; font-size:16px">Continue shopping</a></p> 
                <div class="clearfix"></div>
            </div>
            <div class="card-body">
                    <!-- PRODUCT -->
                    <div class="row">
                    <c:set var="total" value="0"></c:set>
                    <c:set var="subtotal" value="0"></c:set>
                   
                    <c:forEach var="product" items="${sessionScope.cart}" >
			        <c:set var="i" value="${product.getKey()}"></c:set>
			        <c:set var="subtotal" value="${subtotal + i.price * product.getValue()}"></c:set>
			        <c:set var="delivery" value="5.00"></c:set>
                    <c:set var="tax" value="3.00"></c:set> 
			 		<c:set var="total" value="${subtotal + delivery + tax}"></c:set>
			 
                        <div class="col-12 col-sm-12 col-md-2 text-center">
                                <img class="img-responsive" src="<c:out value="${i.pictureUrl}"/>" alt="prewiew" width="120" height="80">
                        </div>
                        <div class="col-12 text-sm-center col-sm-12 text-md-left col-md-6">
                            <p class="product-name"><strong><c:out value="${i.name}"/></strong></p>
                            <p>
                                <small><c:out value="${i.description}"/></small>
                            </p>
                        </div>
                        <div class="col-12 col-sm-12 text-sm-center col-md-4 text-md-right row">
                            <div class="col-3 col-sm-3 col-md-6 text-vmd-right" style="padding-top: 5px">
                                <p><strong><c:out value="${i.price}"/> <span class="text-muted">x</span></strong></p>
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
            </div>
             <div class="card-footer">               
            	 <div class="pull-right" style="margin: 5px">                
                   <h4>Subtotal: $<b>${subtotal}</b></h4>
                  </div>               
        	 </div>
        </div>
       </div>
 	 <div class="col-4">
 	  <main class="page payment-page">
    <section class="payment-form dark">
      <div class="container">
        <div class="block-heading">
          <h2>Payment</h2>
        </div>
        <form>
          <div class="products">
            <h3 class="title">Checkout</h3>
           <c:forEach var="product" items="${sessionScope.cart}" >
           	<c:set var="i" value="${product.getKey()}"></c:set>
           
            <div class="item">
              <span class="price">$<c:out value="${i.price}"/></span>
              <p class="item-name"><c:out value="${i.name}"/></p>
              <p class="item-description"><c:out value="${i.description}"/></p>
            </div>
             </c:forEach>
           <div class="total">Delivery<span class="price">$${delivery}</span></div>
           <div class="total">Tax<span class="price">$${tax}</span></div>
            
            <div class="total">Total<span class="price">$${total}</span></div>
          </div>
          
            <!--SHIPPING METHOD-->
          <div class="card-details">
            			<h3 class="title">Shipping Adress</h3>

                        
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-md-12">
<!--                                     <p>Shipping Address</p>
 -->                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Country:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" class="form-control" name="country" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-6 col-xs-12">
                                    <strong>First Name:</strong>
                                    <input type="text" name="first_name" class="form-control" value="" />
                                </div>
                                <div class="span1"></div>
                                <div class="col-md-6 col-xs-12">
                                    <strong>Last Name:</strong>
                                    <input type="text" name="last_name" class="form-control" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Address:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="address" class="form-control" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>City:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="city" class="form-control" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>State:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="state" class="form-control" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Zip / Postal Code:</strong></div>
                                <div class="col-md-12">
                                    <input type="text" name="zip_code" class="form-control" value="" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Phone Number:</strong></div>
                                <div class="col-md-12"><input type="text" name="phone_number" class="form-control" value="" /></div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>Email Address:</strong></div>
                                <div class="col-md-12"><input type="text" name="email_address" class="form-control" value="" /></div>
                            </div>
                        </div>
                    </div>
                    <!--SHIPPING METHOD END-->
          
          <div class="card-details">
            <h3 class="title">Credit Card Details</h3>
            <div class="row">
              <div class="form-group col-sm-7">
                <label for="card-holder">Card Holder</label>
                <input id="card-holder" type="text" class="form-control" placeholder="Card Holder" aria-label="Card Holder" aria-describedby="basic-addon1">
              </div>
              <div class="form-group col-sm-5">
                <label for="">Expiration Date</label>
                <div class="input-group expiration-date">
                  <input type="text" class="form-control" placeholder="MM" aria-label="MM" aria-describedby="basic-addon1">
                  <span class="date-separator">/</span>
                  <input type="text" class="form-control" placeholder="YY" aria-label="YY" aria-describedby="basic-addon1">
                </div>
              </div>
              <div class="form-group col-sm-8">
                <label for="card-number">Card Number</label>
                <input id="card-number" type="text" class="form-control" placeholder="Card Number" aria-label="Card Holder" aria-describedby="basic-addon1">
              </div>
              <div class="form-group col-sm-4">
                <label for="cvc">CVC</label>
                <input id="cvc" type="text" class="form-control" placeholder="CVC" aria-label="Card Holder" aria-describedby="basic-addon1">
              </div>
              <div class="form-group col-sm-12">
                <button type="button" class="btn btn-warning btn-block">Proceed</button>
              </div>
            </div>
          </div>
        </form>
        </div>
    	</section>
     </main>
    </div>
    </div>
   </div>
   </div>
</body>   
</html>