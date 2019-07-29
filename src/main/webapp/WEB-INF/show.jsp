<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link
	href="https://fonts.googleapis.com/css?family=Parisienne&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Parisienne|Rochester&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Josefin+Slab|Markazi+Text|Parisienne|Petit+Formal+Script|Rochester&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Cormorant+Infant|Josefin+Slab|Markazi+Text|Parisienne|Petit+Formal+Script|Pompiere|Rochester&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/show.css">


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
				<li class="nav-item active"><a class="nav-link" href="/home">Home
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
					style="background-color: #F9E7E7; color: black; border-color: white;"
					placeholder="Search">
				<button class="btn btn-outline-success my-2 my-sm-0"
					style="border-color: pink; color: black" type="submit">Search</button>
			</div>
		</div>
	</nav>
	<div class="title">
		<h1
			style="color: #E5CFCF; font-family: 'Petit Formal Script', cursive">
			Welcome,
			<c:out value="${currentUser.firstName}" />
			<c:out value="${currentUser.lastName}" />
		</h1>
		<br>

		<h1 style="text-align: center; color: gray">Product Details</h1>
	</div>
</div>
<div class="container">
	<div class="card">
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
					<div class="img-small-wrap">
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
					</div>
					<!-- slider-nav.// -->
				</article>
				<!-- gallery-wrap .end// -->
			</aside>
			<aside class="col-sm-7">
				<article class="card-body p-5">
					<h3 class="title mb-3">
						<c:out value="${product.name}" />
					</h3>

					<p class="price-detail-wrap">
						<span class="price h3 text-warning"> <span class="currency">US
								$</span><span class="num"><c:out value="${product.price}" /></span>
						</span> <span>/per item</span>
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
					<dl class="param param-feature">
						<dt>Model#</dt>
						<dd>12345611</dd>
					</dl>
					<!-- item-property-hor .// -->
					<dl class="param param-feature">
						<dt>Color</dt>
						<dd>Black and white</dd>
					</dl>
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
								<dt>Quantity:</dt>
								<dd>
									<select class="form-control form-control-sm"
										style="width: 70px;">
										<option>1</option>
										<option>2</option>
										<option>3</option>
									</select>
								</dd>
							</dl>
							<!-- item-property .// -->
						</div>
						<!-- col.// -->
						<div class="col-sm-7">
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
							<!-- item-property .// -->
						</div>
						<!-- col.// -->
					</div>
					<!-- row.// -->
					<hr>
					<a href="/cart/${id}" class="btn btn-lg btn-primary text-uppercase"
						style="background-color: pink; border: none;"> Buy now </a> <a
						href="/cart/${id}"
						class="btn btn-lg btn-outline-primary text-uppercase"
						style="border-color: pink; color: gray"> <i
						class="fas fa-shopping-cart"></i> Add to cart
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