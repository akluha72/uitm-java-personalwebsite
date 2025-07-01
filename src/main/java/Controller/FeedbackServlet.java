package Controller;

import dao.FeedbackDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/feedback")
public class FeedbackServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        FeedbackDAO dao = new FeedbackDAO();
        boolean success = dao.insertFeedback(name, email, message);

        if (success) {
            response.sendRedirect("home.jsp?status=success");
        } else {
            response.sendRedirect("feedback.jsp?status=error");
        }
    }
}
