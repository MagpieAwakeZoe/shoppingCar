package Control;

import JDBC.DBhandle3;
import Module.product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.LinkedList;

import static javax.swing.text.html.CSS.getAttribute;

/**
 * Created by by on 2017/6/10.
 */
@WebServlet(name = "OrderServlet")
public class OrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        //从session中取出商品的数据
        LinkedList<product> list = (LinkedList<product>) session.getAttribute("list");
        if(list!=null){
            for (int i = 0; i < list.size(); i++) {

                DBhandle3 dBhandle3 = new DBhandle3();
                product product = list.get(i);
                dBhandle3.insert(product);
            }
            request.getRequestDispatcher("/successBuy.jsp").forward(request,response);
        }


    }


}
