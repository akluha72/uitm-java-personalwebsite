package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
    
    private static final String DB_URL = "jdbc:derby://localhost:1527/personalWebsite";
    private static final String DB_USER = "app";
    private static final String DB_PASSWORD = "app";
    
    public static Connection getConnetcion() throws SQLException {
        return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
    }
}
