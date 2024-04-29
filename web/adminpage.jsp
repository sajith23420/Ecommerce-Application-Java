<%-- 
    Document   : adminpage
    Created on : Apr 27, 2024, 9:15:05 PM
    Author     : Lakshani Navindya
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: pink;
        }
        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
        }
        form { 
            text-align: center;
        }
        input[type="text"], input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: green;
            color: white;
            border: none;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: green;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Admin Page</h1>
        <form action="ClothingServlet" method="post">
            Clothing Name: <input type="text" name="name"><br>
            Clothing Type: <input type="text" name="type"><br>
            Price: <input type="text" name="price"><br>
            <input type="submit" value="Add Clothing">
        </form>
    </div>
</body>
</html>

