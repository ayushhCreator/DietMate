<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Page</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <style>
    /* Enhanced CSS Styles */
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f9;
      margin: 0;
      padding: 0;
    }

    .container {
      max-width: 400px;
      margin: 50px auto;
      padding: 20px;
      background-color: #fff;
      box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
      border-radius: 8px;
    }

    h1 {
      margin-bottom: 20px;
      color: #333;
      font-weight: bold;
    }

    input[type="email"],
    input[type="password"],
    select {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
      font-size: 16px;
    }

    button {
      width: 100%;
      padding: 12px;
      background-color: #4CAF50;
      color: white;
      border: none;
      border-radius: 4px;
      font-size: 18px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    button:hover {
      background-color: #45a049;
    }

    select {
      background-color: #fff;
      color: #333;
    }

    select:focus {
      border-color: #4CAF50;
      outline: none;
    }

    /* Mobile optimization */
    @media (max-width: 500px) {
      .container {
        margin: 20px;
        padding: 15px;
      }

      button {
        font-size: 16px;
        padding: 10px;
      }
    }
  </style>
</head>
<body>

<div class="container">
  <h1>Login</h1>
  <form action="logserv" method="post">
    <input type="email" name="email" placeholder="Email" required>
    <input type="password" name="pass" placeholder="Password" required>
    <select name="role" required>
      <option value="" disabled selected>Select Role</option>
      <option value="admin">Admin</option>
      <option value="user">User</option>
    </select>
    <button type="submit">Login</button>
  </form>
</div>

</body>
</html>
