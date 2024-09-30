<%@page import="model.Dao2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.User3" %>
<%@ page import="model.Dao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Member List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* CSS Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            font-size: 15px;
        }
         .navbar {
    background-color: #006400;
    color: #fff;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 16px;
    width: 100%;
       font-weight: bold;
}

        .navbar-left {
            display: flex;
        }

        .navbar a {
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            margin-right: 10px;
        }

        .navbar a:hover {
            background-color: #555;
        }

        .navbar .logout {
            margin-left: auto;
        }
        

     

        .container {
            margin-top: 30px;
            margin-bottom: 50px;
        }

        h1 {
            margin-bottom: 20px;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #dee2e6;
            padding: 12px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 15px;
       
            bottom: 0;
            width: 100%;
        }

    footer {
      font-size: 0.9em;
      color: #888;
    }
        .back-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s ease;
        }

        .back-button:hover {
            background-color: #45a049;
        }
        .cen{
            align:center;
        }
    </style>
</head>
<body>


    <div class="navbar">
        <div class="navbar-left">
          <a href="admin.jsp">Home</a> 
        </div>
         <a href="logout.jsp" class="logout">Logout</a>
       </div>
<div class="container">
 
 
 
            <h1 class="cen">Member List</h1>

    <div class="table-responsive">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Weight</th>
                    <th>Height</th>
                    <th>Meals per Day</th>
                    <th>Goal</th>
                    <th>Description</th>
                </tr>
            </thead>
            <tbody>
                <% Dao2 dao = new Dao2();
                   ArrayList<User3> userList = dao.getlist();
                   for (User3 user : userList) { %>
                <tr>
                    <td><%= user.getId() %></td>
                    <td><%= user.getName() %></td>
                    <td><%= user.getWeight() %></td>
                    <td><%= user.getHeight() %></td>
                    <td><%= user.getMealsPerDay() %></td>
                    <td><%= user.getGoal() %></td>
                    <td><%= user.getDescription() %></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>

    <a href="admin.jsp" class="back-button">Back</a>
</div>

<div class="footer">
    &copy; 2024 DietMate. All rights reserved.
</div>

<!--  
  <div class="header">
    <h1>Member List</h1>
</div>
  .header {
            background-color: #006400;
            color: #fff;
            text-align: center;
            padding: 15px;
        } -->
</body>
</html>
