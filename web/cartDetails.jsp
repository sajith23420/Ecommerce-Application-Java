<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.shashi.service.impl.*, com.shashi.service.*,com.shashi.beans.*,java.util.*,javax.servlet.ServletOutputStream,java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Cart Details</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/changes.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

	<%
	/* Checking the user credentials */
	String userName = (String) session.getAttribute("username");
	String password = (String) session.getAttribute("password");

	if (userName == null || password == null) {

		response.sendRedirect("login.jsp?message=Session Expired, Login Again!!");

	}

	String addS = request.getParameter("add");
	if (addS != null) {

		int add = Integer.parseInt(addS);
		String uid = request.getParameter("uid");
		String pid = request.getParameter("pid");
		int avail = Integer.parseInt(request.getParameter("avail"));
		int cartQty = Integer.parseInt(request.getParameter("qty"));
		CartServiceImpl cart = new CartServiceImpl();

		if (add == 1) {
			//Add Product into the cart
			cartQty += 1;
			if (cartQty <= avail) {
		cart.addProductToCart(uid, pid, 1);
			} else {
		response.sendRedirect("./AddtoCart?pid=" + pid + "&pqty=" + cartQty);
			}
		} else if (add == 0) {
			//Remove Product from the cart
			cart.removeProductFromCart(uid, pid);
		}
	}
	%>



	<jsp:include page="header.jsp" />

	<%@ include file="footer.html"%>

</body>
</html>
