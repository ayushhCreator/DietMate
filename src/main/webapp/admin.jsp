<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #006400;
            overflow: hidden;
        }

        .navbar a {
            float: left;
            color: #fff;
            text-align: center;
            padding: 20px 16px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: #333;
        }
         .navbar .logout{
        float:right;
        }

        .content {
            padding: 20px;
        }
        .content {
            text-align: center;
        }
        
        /* Additional styles for diet information 
        .diet-info {
            background-color: #f7f7f7;
            border: 1px solid #ccc;
            padding: 20px;
            margin-top: 20px;
        }
        
        .diet-info h2 {
            color: #333;
        }
        
        .diet-info p {
            font-size: 18px;
            line-height: 1.6;
            margin-bottom: 10px;
        }
        */
        
        
        .diet-info {
    background-color: #f0f8ff;
    border-radius: 8px;
    padding: 20px;
    margin-top: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.tip {
    margin-bottom: 20px;
    background-color: #fff;
    padding: 15px;
    border: 1px solid #ddd;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
}

.tip h3 {
    color: #006400;
    margin-bottom: 10px;
}

.tip p {
    font-size: 16px;
    color: #333;
}

.diet-info h2 {
    color: #333;
    margin-bottom: 15px;
}
        
        .footer {
      background-color: #333;
      color: #fff;
       padding: 1px 0px;
      text-align: center;
      font-size: 18px;
    }
        
    </style>
</head>
<body>
    <div class="navbar">
        <a href="admin.jsp">Home</a>
        <a href="info.jsp">User List</a>
        <a href="add.jsp">Add Plans</a>
        <a href="view.jsp">Diet Plans</a>
        <a href="memb.jsp">Our Members</a>
        <!--   <a href="viewplan.jsp">View Plan list</a>     -->
        
  
        <a href="logout.jsp" class="logout">Logout</a>
    </div>
    <div class="content">
        <h1>Welcome to Admin Dashboard!</h1>
        <p>Make your plans for the users and help them stay healthy.</p>
        
<div class="diet-info">
    <h2>Diet Information</h2>
    <p>As an admin, you play a crucial role in guiding users towards healthier choices and lifestyle habits. 
    Here are some essential tips and diet information you can share with your users:</p>
    
    <!-- Tip 1 -->
    <div class="tip">
        <h3>1. Encourage a Balanced Diet</h3>
        <p>Emphasize the importance of a balanced diet that includes a variety of fruits, vegetables, whole grains, lean proteins, and healthy fats.</p>
    </div>

    <!-- Tip 2 -->
    <div class="tip">
        <h3>2. Portion Control</h3>
        <p>Educate users about the significance of portion control to avoid overeating and maintain a healthy weight.</p>
    </div>

    <!-- Tip 3 -->
    <div class="tip">
        <h3>3. Stay Hydrated</h3>
        <p>Remind users to drink an adequate amount of water throughout the day to stay hydrated and support overall well-being.</p>
    </div>

    <!-- Tip 4 -->
    <div class="tip">
        <h3>4. Limit Sugary and Processed Foods</h3>
        <p>Advise users to limit the consumption of sugary and processed foods, as they can contribute to health issues.</p>
    </div>

    <!-- Tip 5 -->
    <div class="tip">
        <h3>5. Promote Regular Exercise</h3>
        <p>Encourage users to engage in regular physical activity to improve cardiovascular health and enhance mood.</p>
    </div>

    <!-- Tip 6 -->
    <div class="tip">
        <h3>6. Provide Personalized Plans</h3>
        <p>Tailor diet plans according to individual needs, preferences, and health goals to ensure maximum effectiveness.</p>
    </div>

    <!-- Tip 7 -->
    <div class="tip">
        <h3>7. Monitor Progress</h3>
        <p>Regularly track users' progress and offer guidance to keep them motivated on their health journey.</p>
    </div>
</div>

        
    </div>
     <div class="footer">
    <p>&copy; 2024 DietMate. All rights reserved.</p>
  </div>
</body>
</html>
