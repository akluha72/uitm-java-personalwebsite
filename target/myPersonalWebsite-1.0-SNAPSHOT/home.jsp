<%@page language="java" contentType="text/html" pageEncoding="UTF-8" session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lutfi Akmal</title>

        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                display: flex;
                flex-direction:column;
                justify-content: center;
                align-items: center;
                height: 100%;
                margin: 0;

            }

            .profile-container {
                background: white;
                padding: 30px 40px;
                border-radius: 10px;
                box-shadow: 0 4px 12px rgba(0,0,0,0.1);
                text-align: center;
                width: 400px;
            }

            .navbar {
                width: 90%;
                padding: 0px 50px;
                display: flex;
                flex-direction: row;
                justify-content: space-between;
                align-items: center;
                margin: 40px 0px;
                gap: 10px;
            }

            h1 {
                margin: 0 !important;
                flex-grow: 1;
            }

            img {
                border-radius: 10px;
                margin-top: 10px;
            }

            .details-wrapper {
                display: flex;
                flex-direction: row;
                gap: 10px;
            }

            video {
                margin-top: 10px;
                width: 30%;
                border-radius: 10px;
            }

            a {
                display: inline-block;
                color: white;
                background-color: #D2042D;
                padding: 8px 16px;
                border-radius: 5px;
                text-decoration: none;
            }

            a:hover {
                background-color: #555;
            }

            .aboutme-btn {
                background-color: green;
            }

            textarea {
                width: 90%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                resize: vertical;
            }

            .profile-container input[type="email"],
            .profile-container input[type="text"] {
                width: 90%;
                padding: 10px;
                margin-top: 8px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            .profile-container input[type="submit"] {
                width: 100%;
                padding: 10px;
                background-color: #333;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
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


        <div class="navbar">
            <h1>Welcome, <%= username%>!</h1>
             <a href="feedback-list.jsp" class="aboutme-btn">View All Feedback</a>
            <a href="about.jsp" class="aboutme-btn">About Me</a>
            <a href="logout">Logout</a>
        </div>

        <img src="images/lutfiPFP.jpg" id="profileImage" alt="My Photo" width="200"><br><br>

        <div class="details-wrapper">
            <p><strong>Age:</strong> 25</p>
            <p><strong>Hobby:</strong> Go-karting</p>
            <p><strong>Interests:</strong> Coding</p>
        </div>

        <video width="360" height="440" controls>
            <source src="images/gokarts.mp4" type="video/mp4">
            Your browser does not support the video tag.
        </video><br><br>


        <div class="profile-container" style="margin-top: 30px; margin-bottom: 10vh">
            <h2>Inquiry Form</h2>
            <form action="feedback" method="post">
                <input type="text" name="name" placeholder="Your Name" required><br>
                <input type="email" name="email" placeholder="Your Email" required><br>
                <textarea name="message" rows="5" placeholder="Your message..." required></textarea><br>
                <input type="submit" value="Submit">
            </form>

            <% if ("success".equals(request.getParameter("status"))) { %>
            <p style="color: green;">Thank you! Your feedback has been submitted.</p>
            <% } else if ("error".equals(request.getParameter("status"))) { %>
            <p style="color: red;">Oops! Something went wrong. Try again.</p>
            <% }%>
        </div>

    </body>
</html>
