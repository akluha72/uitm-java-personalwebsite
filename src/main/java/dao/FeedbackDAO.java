package dao;

import utils.DBUtil;
import java.sql.*;
import java.util.*;

public class FeedbackDAO {

    public boolean insertFeedback(String name, String email, String message) {
        String sql = "INSERT INTO feedback (name, email, message) VALUES (?, ?, ?)";

        try (Connection conn = DBUtil.getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, name);
            stmt.setString(2, email);
            stmt.setString(3, message);
            stmt.executeUpdate();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<String[]> getAllFeedbacks() {
        List<String[]> feedbacks = new ArrayList<>();
        String sql = "SELECT name, email, message FROM feedback";

        try (Connection conn = DBUtil.getConnection();
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                String[] fb = new String[3];
                fb[0] = rs.getString("name");
                fb[1] = rs.getString("email");
                fb[2] = rs.getString("message");
                feedbacks.add(fb);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return feedbacks;
    }
}
