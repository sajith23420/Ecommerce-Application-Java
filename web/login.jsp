<!DOCTYPE html>
<html>
<head>
<title>Login</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<form action="" method="post"
				class="col-md-4 col-md-offset-4 col-sm-8 col-sm-offset-2">
				<div >
					<h2>Login Form</h2>
				</div>
				<div></div>
				<div class="row">
					<div class="col-md-12 form-group">
						<label for="last_name">Username</label> <input type="email"
							placeholder="Enter Your Username" name="username" class="form-control"
							id="last_name" required>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 form-group">
						<label for="last_name">Password</label> <input type="password"
							placeholder="Enter Your Password" name="password" class="form-control"
							id="last_name" required>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 form-group">
						<label for="userrole">Login As</label> <select name="usertype"
							id="userrole" class="form-control" required>
							<option value="customer" selected>CUSTOMER</option>
							<option value="admin">ADMIN</option>
						</select>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 text-center">
						<button type="submit" class="btn btn-success" >Login</button>
					</div>
				</div>
			</form>

		</div>
	</div>
</body>
</html>
