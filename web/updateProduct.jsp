<!DOCTYPE html>
<html>
<head>
<title>Update Product</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<jsp:include page="" />
	<div class="container">
		<div class="row"
			style="margin-top: 5px; margin-left: 2px; margin-right: 2px;">
			<form action="" method="post"
				class="col-md-6 col-md-offset-3"
				>
				<div style="font-weight: bold;" class="text-center" >
					<div class="form-group">
						<img src=""
							alt="Product Image" height="100px" />
						<h2>Product Update Form</h2>
					</div>
				</div>
				<div class="row">
					<input type="hidden" name="pid" class="form-control"
						value="" id="last_name" required>
				</div>
				<div class="row">
					<div class="col-md-6 form-group">
						<label  for="last_name" >Name of the Product</label> <input type="text"
							placeholder="Pease Enter Product Name" name="name" class="form-control"
							value="" id="last_name" required>
					</div>
					<div class="col-md-6 form-group">
						
						<label for="producttype">Product Type</label> <select name="type"
							id="producttype" class="form-control" required>
							<option value="mobile">MOBILE</option>
							<option value="tv">TV</option>
							<option value="camera">CAMERA</option>
							<option value="laptop">LAPTOP</option>
							<option value="tablet">TABLET</option>
							<option value="speaker"></option>/option>SPEAKER</option>
							<option value="other">Some Other Appliances</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="last_name">Product Description</label>
					<textarea name="info" class="form-control text-align-left"
						id="last_name" required></textarea>
				</div>
				<div class="row">
					<div class="col-md-6 form-group">
						<label for="last_name">Unit Price</label> <input type="number"
							value=""
							placeholder="Enter Unit Price" name="price" class="form-control"
							id="last_name" required>
					</div>
					<div class="col-md-6 form-group">
						<label for="last_name">Stock Quantity</label> <input type="number"
							value=""
							placeholder="Enter Stock Quantity" class="form-control"
							id="last_name" name="quantity" required>
					</div>
				</div>
				<div class="row text-center">
					<div class="col-md-4" style="margin-bottom: 2px;">
						<button formaction="" class="btn btn-danger">Cancel</button>
					</div>
					<div class="col-md-4">
						<button type="submit" class="btn btn-success">Update
							</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
