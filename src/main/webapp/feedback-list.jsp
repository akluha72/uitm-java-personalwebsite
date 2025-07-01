<%@page import="dao.FeedbackDAO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>All Feedback</title>
        <style>
            body {
                font-family: Arial;
                padding: 40px;
            }

            table {
                width: 100%;
                border-collapse: collapse;

                box-shadow: 0 4px 12px rgba(255, 255, 255, 0.1); 

            }

            th, td {
                padding: 10px;
                border: 1px solid #444; 
                text-align: left;
            }

            th {
                background-color: #222;
                color: white;
            }
        </style>
    </head>
    <body>
        <h2>All Feedback</h2>
        <table>
            <tr><th>Name</th><th>Email</th><th>Message</th></tr>
                    <%
                        FeedbackDAO dao = new FeedbackDAO();
                        List<String[]> feedbacks = dao.getAllFeedbacks();
                        for (String[] fb : feedbacks) {
                    %>
            <tr>
                <td><%= fb[0]%></td>
                <td><%= fb[1]%></td>
                <td><%= fb[2]%></td>
            </tr>
            <% }%>
        </table>
        <br>
        <a href="home.jsp">← Back to homepage</a>
    </body>
</html>
