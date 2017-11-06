package Control;

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

/**
 * Created by by on 2017/6/3.
 */
//@WebServlet(name = "RegistServlet")
public class RegistServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        PrintWriter out = response.getWriter();
        String name = request.getParameter("registName");
        String password = request.getParameter("registPassword");
//        String question = request.getParameter("registQuestion");
        String answer = request.getParameter("registAnswer");

        DBhandle2 dBhandle2 = new DBhandle2();
        user user = new user();
        user.setUsername(name);
        user.setPassword(password);
        user.setAnswer(answer);
//        user.setQuestion(question);
        dBhandle2.insertUser(user);
        request.getRequestDispatcher("/login.jsp").forward(request,response);
    }
}
