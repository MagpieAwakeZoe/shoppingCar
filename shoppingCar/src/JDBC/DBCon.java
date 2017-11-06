package JDBC;
import java.sql.*;

/**
 * Created by by on 2017/6/2.
 */
public class DBCon {
    private static Statement statement;
    private static Connection conn;
    public static Connection getConn() {
       String driver = "com.mysql.jdbc.Driver";
       String url = "jdbc:mysql://localhost:3306/shoppingcar";
       String username = "root";
       String password = "";

           try {
               Class.forName(driver); //classLoader,加载对应驱动
               conn = (Connection) DriverManager.getConnection(url, username, password);
               statement = conn.createStatement();
           } catch (ClassNotFoundException e) {
               e.printStackTrace();
           } catch (SQLException e) {
               e.printStackTrace();
           }
           return conn;
       }
}
