package Control;

import JDBC.DBCon;
import JDBC.DBhandle;
import JDBC.DBhandle2;
import Module.user;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

/**
 * Created by by on 2017/6/3.
 */
//@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String username = request.getParameter("loginName");
        String password = request.getParameter("LoginPassword");
//提取出用户输入的数据，与数据库中提取的数据进行比较。
        DBhandle2 dBhandle = new DBhandle2();
        user user = dBhandle.selectByUserName(username);
        user user1 = dBhandle.login(username,password);
        if (user==null) {
            request.getRequestDispatcher("/noUser.jsp").forward(request,response);
//            System.out.println("该用户不存在");
//            out.print("<script>");
//            out.print("alert('该用户不存在');");
//            out.print("</script>");
        } else if (user1==null){
            request.getRequestDispatcher("/passwordError.jsp").forward(request,response);
//            System.out.println("用户密码错误");
//            out.print("<script>");
//            out.print("alert('用户密码错误');");
//            out.print("</script>");
//            request.getRequestDispatcher("/list11.jsp").forward(request,response);
        }else{
            //跳转
                request.getRequestDispatcher("/index.jsp").forward(request,response);
     }




    }
}
