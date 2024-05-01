<!DOCTYPE html>
<html>
<head>
<title>Login</title>
</head>
<body style="background-color: #2a2e2b;">
	<div class="container">
		<div class="row"
			style="margin-top: 5px; margin-left: 2px; margin-right: 2px;">
			<form action="" method="post"
				class="col-md-4 col-md-offset-4 col-sm-8 col-sm-offset-2"
				style="color: white; border:  #2a2e2b; border-radius: 10px; background-color: #2a2e2b; padding: 10px;">
				<div style="font-weight: bold;" class="text-center">
					<h2 style="color: white;">Login Form</h2>
				</div>
				<div></div>
				<div class="row">
					<div class="col-md-12 form-group"  style="color: #E6F9E6;">
						<label for="last_name">Username</label> <input type="email"
							placeholder="Enter Username" name="username" class="form-control"
							id="last_name" required>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 form-group">
						<label for="last_name">Password</label> <input type="password"
							placeholder="Enter Password" name="password" class="form-control"
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