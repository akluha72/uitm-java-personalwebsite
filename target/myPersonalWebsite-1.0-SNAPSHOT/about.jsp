<%@page language="java" contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>About Me - Lutfi Akmal</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 40px;
            }

            .about-container {
                max-width: 800px;
                background: white;
                margin: 0 auto;
                padding: 40px;
                border-radius: 10px;
                box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            }

            h1 {
                text-align: left;
                margin-bottom: 20px;
            }

            p {
                line-height: 1.6;
                text-align: justify;
            }

            a {
                display: inline-block;
                margin-top: 20px;
                background-color: #D2042D;
                color: white;
                padding: 8px 16px;
                border-radius: 5px;
                text-decoration: none;
            }

            a:hover {
                background-color: #555;
            }
        </style>
    </head>
    <body>
        <%
            String username = (String) session.getAttribute("username");

            if (username == null) {
                response.sendRedirect("login.jsp");
                return;
            }
        %>

        <div class="about-container">
            <h1>About Me</h1>
            <p>
                I'm Lutfi Akmal, a 25-year-old web developer currently working at <strong>Myra x OIB</strong>. 
                I graduated with a Diploma in Information Technology from <strong>UNISEL</strong> in 2022. 
                Right after graduating, I began my internship at Myra x OIB and continued growing within the company. 
                I'm now proudly working as a <strong>Digital Executive</strong> at the same company, 
                while also pursuing my studies part-time at <strong>UiTM</strong> in the field of Information Technology.
            </p>

            <a href="home.jsp">← Back to Home</a>
        </div>

    </body>
</html>
