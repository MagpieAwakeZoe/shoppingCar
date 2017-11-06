package JDBC;

import Module.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by by on 2017/6/5.
 */
public class DBhandle {
    //增
   public int insert(user user) {
        DBCon db=new DBCon();
        Connection conn = db.getConn();
        int i = 0;
            String sql = "insert into USER (username,password,question,answer) values(?,?,?,?)";
        PreparedStatement pstmt;
        try {
            pstmt = (PreparedStatement) conn.prepareStatement(sql);
            pstmt.setString(1, user.getUsername());
            pstmt.setString(2, user.getPassword());
//            pstmt.setString(3, user.getQuestion());
            pstmt.setString(4, user.getAnswer());
            i = pstmt.executeUpdate();
            pstmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return i;
    }
    //删
    public   int delete(String name) {
        DBCon db=new DBCon();
        Connection conn = db.getConn();
        int i = 0;
        String sql = "delete from USER where username='" + name + "'";
        PreparedStatement pstmt;
        try {
            pstmt = (PreparedStatement) conn.prepareStatement(sql);
            i = pstmt.executeUpdate();
            System.out.println("result: " + i);
            pstmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return i;
    }
    //查
    public   Integer getAll() {
        DBCon db=new DBCon();
        Connection conn = db.getConn();
        String sql = "select * from USER ";
        PreparedStatement pstmt;
        try {
            pstmt = (PreparedStatement)conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            int col = rs.getMetaData().getColumnCount();
            System.out.println("============================");
            while (rs.next()) {
                for (int i = 1; i <= col; i++) {
                    System.out.print(rs.getString(i) + "\t");
                    if ((i == 2) && (rs.getString(i).length() < 8)) {
                        System.out.print("\t");
                    }
                }
                System.out.println("");
            }
            System.out.println("============================");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    //改
    public static int update(user user) {
        DBCon db=new DBCon();
        Connection conn = db.getConn();
        int i = 0;
        String sql = "update USER set username='" + user.getUsername() + "' where Name='" + user.getUsername() + "'";
        PreparedStatement pstmt;
        try {
            pstmt = (PreparedStatement) conn.prepareStatement(sql);
            i = pstmt.executeUpdate();
            System.out.println("resutl: " + i);
            pstmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return i;
    }
//    public static void main(String args[]) {
//        DBhandle db=new DBhandle();
//        db.getAll();
//        db.insert(new user("Achilles","a","b","c"));
//        db.getAll();
//        db.delete("Achilles");
//        db.getAll();
//    }
}


