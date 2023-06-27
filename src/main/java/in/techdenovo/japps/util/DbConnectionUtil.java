package in.techdenovo.japps.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnectionUtil {
    private String url="jdbc:mysql://localhost:3306/crmdb?useSSL=false"; //crmdb is database
    private String username="root";
    private String password="sql123";

    public Connection getDbConnection(){
        Connection con = null;
        try {
            con = DriverManager.getConnection(url,username,password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return con;
    }
}
