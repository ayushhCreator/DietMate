<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.User2" %>
<%@ page import="model.Dao" %>
<%@ page import="java.sql.SQLException" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Buy Diet Plan</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(to right, #f5f5f5, #c6d3d3);
            padding: 20px;
            color: #333;
        }
        .container {
            max-width: 600px;
            margin: auto;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            font-size: 2.5em;
            margin-bottom: 20px;
            color: #007BFF;
        }
        p {
            font-size: 1.2em;
            margin-bottom: 30px;
        }
        .btn-primary {
            background-color: #007BFF;
            border: none;
            padding: 10px 20px;
            font-size: 1.1em;
            transition: background-color 0.3s ease;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
        .footer {
            margin-top: 30px;
            font-size: 0.9em;
            color: #666;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Congratulations!</h1>
    <p>You have successfully bought a plan for yourself.</p>
    <a href="user.jsp" class="btn btn-primary">Back to User Dashboard</a>
</div>

<div class="footer text-center">
    &copy; 2024 DietMate. All rights reserved.
</div>

</body>
</html>
