<%@page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>User Registration</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                height: 100vh;
                margin: 0;
            }
            
            form {
                text-align:left;
            }

            .register-container {
                background: white;
                padding: 30px 40px;
                border-radius: 10px;
                box-shadow: 0 4px 12px rgba(0,0,0,0.1);
                text-align: center;
                width: 300px;
            }

            input[type="text"],
            input[type="password"] {
                width: 90%;
                padding: 10px;
                margin: 10px 0;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            input[type="submit"] {
                width: 100%;
                padding: 10px;
                background-color: #333;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }

            .error, .success {
                margin-top: 10px;
                font-weight: bold;
            }

            .error {
                color: red;
            }

            .success {
                color: green;
            }

            a {
                display: block;
                margin-top: 15px;
                color: #007bff;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div class="register-container">
            <h2>Register</h2>
            <form action="register" method="post">
                <label>Username:</label><br>
                <input type="text" name="username" required><br>

                <label>Password:</label><br>
                <input type="password" name="password" required><br>

                <input type="submit" value="Register">
            </form>

            <%
                String status = request.getParameter("status");
                if ("success".equals(status)) {
            %>
            <p class="success">Registration successful! You can now</p>
            <%
            } else if ("error".equals(status)) {
            %>
            <p class="error">Username already exists or error occurred.</p>
            <%
                }
            %>

            <a href="login.jsp">← Back to Login</a>
        </div>
    </body>
</html>
