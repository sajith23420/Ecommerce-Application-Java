<!DOCTYPE html>
<html>
<head>
<title>Remove Product</title>
</head>
<body>
	<%
	/* Checking the user credentials */
	String userType = (String) session.getAttribute("usertype");
	String userName = (String) session.getAttribute("username");
	String password = (String) session.getAttribute("password");

	if (userType == null || !userType.equals("admin")) {

		response.sendRedirect("login.jsp?message=Access Denied, Login as admin!!");

	}

	else if (userName == null || password == null) {

		response.sendRedirect("login.jsp?message=Session Expired, Login Again!!");

	}
	%>

	<jsp:include page="header.jsp" />

	<%
	String message = request.getParameter("message");
	%>
	<div class="container row">
		<div class="row cls">
			<form action="./RemoveProductSrv" method="post"
				class="col-md-4 col-md-offset-4">
				<div class="text">
					<h3>Product Deletion Form</h3>
					<%
					if (message != null) {
					%>
					<p>
						<%=message%>
					</p>
					<%
					}
					%>
				</div>
				<div class="row cls">
					<div class="col-md-12 form-group">
						<label for="last_name">Product Id</label> <input type="text"
							placeholder="Enter Product Id" name="prodid" class="form-control"
							id="last_name" required>
					</div>
				</div>
				<div class="row cls">
					<div class="col-md-6 text-center">
						<a href="adminViewProduct.jsp" class="btn btn-info">Cancel</a>
					</div>
					<div class="col-md-6 text-center">
						<button type="submit" class="btn btn-danger">Remove
							Product</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
