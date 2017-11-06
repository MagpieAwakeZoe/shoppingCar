package JDBC;

import Module.user;

import java.sql.*;
import java.lang.String;

/**
 * Created by by on 2017/6/5.
 */
public class DBhandle2{
    Connection conn = DBCon.getConn();

    public user login(String userName ,String password)
    {
        String sql = "SELECT * FROM USER WHERE USERNAME = '"+userName+"' AND PASSWORD ='"+password+"'";
        ResultSet rs = null;
        user user = new user();
        try {
            Statement statement = conn.createStatement();
            rs = statement.executeQuery(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            if(rs.next()){
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setAnswer(rs.getString("answer"));
//                user.setQuestion(rs.getString("question"));
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public user findPassword(String userName ,String answer)
    {
        String sql = "SELECT * FROM USER WHERE USERNAME = '"+userName+"' AND ANSWER ='"+answer+"'";
        ResultSet rs = null;
        user user = new user();
        try {
            Statement statement = conn.createStatement();
            rs = statement.executeQuery(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            if(rs.next()){
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setAnswer(rs.getString("answer"));
//                user.setQuestion(rs.getString("question"));
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


    public user selectByUserName(String userName)
    {
        String sql = "SELECT * FROM USER WHERE USERNAME = '"+userName+"'";
        ResultSet rs = null;
        user user = new user();
        try {
            Statement statement = conn.createStatement();
            rs = statement.executeQuery(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            if(rs.next()){
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setAnswer(rs.getString("answer"));
//                user.setQuestion(rs.getString("question"));
                return user;
            }else {
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


    public int insertUser(user newUser)
    {
        String sql = "INSERT USER(USERNAME,PASSWORD,ANSWER) VALUES ( '"+
                newUser.getUsername()+"', '"+
                newUser.getPassword()+"', '"+
                newUser.getAnswer()+
//                newUser.getQuestion()+"', '"+
                "')";
        int r = 0;
        try {
           // r = statement.executeUpdate(sql);
            Statement statement = conn.createStatement();
            statement.execute(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return r;
    }

//改
    public int alterUser(user oldUser)
    {
        String sql = "UPDATE USER SET USERNAME='"+
                oldUser.getUsername()+"', PASSWORD='"+
                oldUser.getAnswer()+"', QUESTION='"+
//                oldUser.getQuestion()+"'"+
                "WHERE USERNAME="+oldUser.getUsername();
        int r = 0;
        try {
            Statement statement = conn.createStatement();
            r = statement.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return r;
    }
}
