package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import utils.DBUtil;

public class UserDAO {

    public boolean checkLogin(String username, String password) {

        boolean isValid = false;
        String sql = "SELECT * FROM users WHERE username = ? AND password = ?";

        try (Connection conn = DBUtil.getConnetcion(); PreparedStatement stmt = conn.prepareStatement(sql)) {
           
            stmt.setString(1, username);
            stmt.setString(2, password);
            
            ResultSet rs = stmt.executeQuery();
            
            if(rs.next()){
                isValid = true;
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        return isValid;
    }
}
