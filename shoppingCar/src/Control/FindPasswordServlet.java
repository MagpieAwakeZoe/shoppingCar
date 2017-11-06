package Control;

import JDBC.DBhandle2;
import Module.user;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by by on 2017/6/9.
 */
//@WebServlet(name = "FindPasswordServlet")
public class FindPasswordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String username = request.getParameter("account");
        String answer = request.getParameter("answer");
        DBhandle2 dBhandle = new DBhandle2();
        user user2 = dBhandle.findPassword(username,answer);
        if (user2 == null){
            request.getRequestDispatcher("/verifyError.jsp").forward(request,response);
        }else {
//            System.out.println(user2.getPassword());
            request.setAttribute("user",user2);
            request.getRequestDispatcher("/tell.jsp").forward(request,response);
        }

        //如果用户名和验证问题都回答正确则弹出弹窗告知你的密码。
    }
}
