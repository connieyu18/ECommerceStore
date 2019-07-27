<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container wrapper">
 <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 col-md-pull-6 col-sm-pull-6">
                    <!--SHIPPING METHOD-->
                    <div class="panel panel-info">
                        <div class="panel-heading">Address</div>
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-md-12">
                                    <h4>Shipping Address</h4>
                                </div>
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
                </div>
<!--
  CREDIT CARD
		<article class="credit-card">
		<div class="card-body p-5">
		<p> <i class="fab fa-cc-visa"></i> 
			<img src="images/icons/pay-visa-el.png"> 
		   <img src="images/icons/pay-mastercard.png">
		   <img src="images/icons/pay-american-ex.png"> </p>
		<p class="alert alert-success">Some text success or error</p>
		
		<form role="form">
		<div class="form-group">
		<label for="username">Full name (on the card)</label>
		<div class="input-group">
			<div class="input-group-prepend">
				<span class="input-group-text"><i class="fa fa-user"></i></span>
			</div>
			<input type="text" class="form-control" name="username" placeholder="" required="">
		</div> input-group.//
		</div> form-group.//
		
		<div class="form-group">
		<label for="cardNumber">Card number</label>
		<div class="input-group">
			<div class="input-group-prepend">
				<span class="input-group-text"><i class="fa fa-credit-card"></i></span>
			</div>
			<input type="text" class="form-control" name="cardNumber" placeholder="">
		</div> input-group.//
		</div> form-group.//
		
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
		        </div> form-group.//
		<button class="subscribe btn btn-primary btn-block" style="background-color:#FADBD8" type="button"> Confirm  </button>
		</form>
		</div> card-body.//
		</article> card.//

         --> 
</body>
</html>


<!-- <article class="card">
<div class="card-body p-5">
<p> <img src="images/icons/pay-visa.png"> 
	<img src="images/icons/pay-visa-el.png"> 
   <img src="images/icons/pay-mastercard.png">
   <img src="images/icons/pay-american-ex.png"> </p>
<p class="alert alert-success">Some text success or error</p>

<form role="form">
<div class="form-group">
<label for="username">Full name (on the card)</label>
<div class="input-group">
	<div class="input-group-prepend">
		<span class="input-group-text"><i class="fa fa-user"></i></span>
	</div>
	<input type="text" class="form-control" name="username" placeholder="" required="">
</div> input-group.//
</div> form-group.//

<div class="form-group">
<label for="cardNumber">Card number</label>
<div class="input-group">
	<div class="input-group-prepend">
		<span class="input-group-text"><i class="fa fa-credit-card"></i></span>
	</div>
	<input type="text" class="form-control" name="cardNumber" placeholder="">
</div> input-group.//
</div> form-group.//

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
        </div> form-group.//
    </div>
</div> row.//
<button class="subscribe btn btn-primary btn-block" type="button"> Confirm  </button>
</form>
</div> card-body.//
</article> card.// -->
