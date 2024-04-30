<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Remove Product</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/changes.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #2a2e2b;">
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
	<div class="container">
		<div class="row"  style="margin-top: 2px; margin-left: 2px; margin-right: 2px;">>
			<form action="./RemoveProductSrv" method="post"
				class="col-md-4 col-md-offset-4" 
                                  style="border: 1px solid black; border-radius: 5px; background-color: #FFE5CC; padding: 5px;">
					<div style="font-weight: bold;" class="text-center">
					<h3 style="color: blue;">Product Deletion Form</h3>
					<%
					if (message != null) {
					%>
					<p style="color: blue;">
						<%=message%>
					</p>
					<%
					}
					%>
				</div>
