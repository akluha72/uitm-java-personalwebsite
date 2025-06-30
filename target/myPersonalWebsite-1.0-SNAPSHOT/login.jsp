<%-- 
    Document   : login
    Created on : Jun 17, 2025, 9:50:02 PM
    Author     : Admin
--%>

<%@page language="java" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html> 
<html> 
    <head>
        <meta charset="UTF-8">
        <title> Login page </title>

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

            .login-container {
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

            .error {
                color: red;
                margin-top: 10px;
            }
        </style>
    </head>


    <h2>Login</h2>

    <form action ="login" method="post">
        <label>Username: </label> <br>
        <input type="text" name="username" required><br><br>

        <label>Password:</label><br>
        <input type="password" name="password" required><br><br>

        <input type="submit" value="Login">
    </form>


    <%-- Error display if login fails --%>
    <%
        String error = request.getParameter("error");
        if ("true".equals(error)) {
    %>
    <p style="color:red">Invalid username or password!</p>
    <%
        }
    %>


</html>