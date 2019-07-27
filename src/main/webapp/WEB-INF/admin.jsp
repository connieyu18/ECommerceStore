<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/admin.css">

<div class="wrapper">
	<h2>
		<a href="/productList">Back to product page</a>
	</h2>
	<div class="container">
		<form:form action="/addProduct" method="post" modelAttribute="product">
			<div class="form-group row">
				<form:label path="name" class="col-sm-3 col-form-label">Product Name:</form:label>
				<form:errors path="name" />
				<div class="col-sm-6">
					<form:input path="name" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<form:label path="description" class="col-sm-3 col-form-label">Description:</form:label>
				<form:errors path="description" />
				<div class="col-sm-6">
					<form:input path="description" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<form:label path="category" class="col-sm-3 col-form-label">Category:</form:label>
				<form:errors path="category" />
				<div class="col-sm-6">
					<form:input path="category" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<form:label path="price" class="col-sm-3 col-form-label">Price:</form:label>
				<form:errors path="price" />
				<div class="col-sm-6">
					<form:input path="price" class="form-control" />
				</div>
			</div>
			<div class="form-group row">
				<form:label path="pictureUrl" class="col-sm-3 col-form-label">Picture url:</form:label>
				<form:errors path="pictureUrl" />
				<div class="col-sm-6">
					<form:input path="pictureUrl" class="form-control" />
				</div>
			</div>
			<input type="submit" class="btn btn-warning" value="Create Product" />
		</form:form>

		<!-- Trigger the modal with a button -->
		<!--  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal"style="float:right">Add Product</button>
 -->
		<%--   <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" style="float:right" "class="btn btn-default" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Add a product</h4>
        </div>
        <div class="modal-body">
			<form:form action="/addProduct" method="post" modelAttribute="product">
		    <div class="form-group row">
		        <form:label path="name" class="col-sm-3 col-form-label">Product Name:</form:label>
		        <form:errors path="name"/>
		        <div class="col-sm-6">
		        	<form:input path="name" class="form-control"/>
		         </div>
 			 </div>
 		  <div class="form-group row">
		        <form:label path="description" class="col-sm-3 col-form-label">Description:</form:label>
		        <form:errors path="description"/>
		        <div class="col-sm-6">
		        	<form:input path="description" class="form-control"/>
		         </div>
 		  </div>
 		  <div class="form-group row">
		        <form:label path="category" class="col-sm-3 col-form-label">Category:</form:label>
		        <form:errors path="category"/>
		        <div class="col-sm-6">
		        	<form:input path="category" class="form-control"/>
		         </div>
 		  </div>
		  <div class="form-group row">
		        <form:label path="price"  class="col-sm-3 col-form-label">Price:</form:label>
		        <form:errors path="price"/>
		         <div class="col-sm-6">
		        	<form:input path="price" class="form-control"/>
		        </div>
		    </div>
			 <div class="form-group row">
		        <form:label path="pictureUrl" class="col-sm-3 col-form-label">Picture url:</form:label>
		        <form:errors path="pictureUrl"/>
		        <div class="col-sm-6">
		        	<form:input path="pictureUrl" class="form-control"/>
		         </div>
			
			</div>
        </div>
        <div class="modal-footer">
       		 <input type="submit" class="btn btn-warning" value="Create Product"/>
			</form:form>
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			
        </div>
      </div>
      
    </div>
  </div>
  
</div> --%>

	</div>

	<div class="container">
		<h1>All Products</h1>
		<table class="table table-striped table-bordered table-hover dark">
			<thead>
				<tr>
					<th>Product ID</th>
					<th>Product Name</th>
					<th>Description</th>
					<th>Category</th>
					<th>Product Price</th>
					<th>Product Image</th>
					<th>Edit/Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="i" items="${products}">
					<tr>
						<td><span><strong><c:out
										value="${i.getId() }" /> </strong></span></td>
						<td><a href="/products/${i.getId() }"><c:out
									value="${i.getName() }" /></a></td>
						<td><c:out value="${i.getDescription() }" /></td>
						<td><c:out value="${i.getCategory() }" /></td>
						<td>$<c:out value="${i.getPrice() }" />0
						</td>
						<td><img class="img-fluid"
							style="width: 100px; height: 100px; float: center"
							src="<c:out value="${i.getPictureUrl()}"/>" /></td>
						<td><p>
								<button type="button" class="btn btn-light btn-sm"
									data-toggle="modal" data-target="#myModal">Edit
									Product</button>
							</p> <!-- Modal for edit -->
							<div class="modal fade" id="myModal" role="dialog">
								<div class="modal-dialog">

									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" style="float: right"
												"class="btn btn-default" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Edit a product</h4>
										</div>
										<div class="modal-body">
											<form:form action="/editProduct/${i.getId() }" method="post"
												modelAttribute="product">
												<div class="form-group row">
													<form:label path="name" class="col-sm-3 col-form-label">Product Name:</form:label>
													<form:errors path="name" />
													<div class="col-sm-6">
														<form:input path="name" class="form-control" />
													</div>
												</div>
												<div class="form-group row">
													<form:label path="description"
														class="col-sm-3 col-form-label">Description:</form:label>
													<form:errors path="description" />
													<div class="col-sm-6">
														<form:input path="description" class="form-control" />
													</div>
												</div>
												<div class="form-group row">
													<form:label path="category" class="col-sm-3 col-form-label">Category:</form:label>
													<form:errors path="category" />
													<div class="col-sm-6">
														<form:input path="category" class="form-control" />
													</div>
												</div>
												<div class="form-group row">
													<form:label path="price" class="col-sm-3 col-form-label">Price:</form:label>
													<form:errors path="price" />
													<div class="col-sm-6">
														<form:input path="price" class="form-control" />
													</div>
												</div>
												<div class="form-group row">
													<form:label path="pictureUrl"
														class="col-sm-3 col-form-label">Picture url:</form:label>
													<form:errors path="pictureUrl" />
													<div class="col-sm-6">
														<form:input path="pictureUrl" class="form-control" />
													</div>

												</div>
										</div>
										<div class="modal-footer">
											<input type="submit" class="btn btn-warning" value="Save" />
											</form:form>
											<button type="button" class="btn btn-default"
												data-dismiss="modal">Close</button>

										</div>
									</div>

								</div>
							</div>


							<p>
								<a href="/products/${i.getId()}/delete">Delete</a>
							</p></td>
					</tr>
				</c:forEach>
		</table>
	</div>
</div>