package Control;

import Module.product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.LinkedList;

/**
 * Created by by on 2017/6/9.
 */
@WebServlet(name = "ShoppingCarServlet")
public class ShoppingCarServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html,charset=utf-8");
        String number =  request.getParameter("priceNum");
        String unitprice = request.getParameter("unitPrice");
        String allprice = request.getParameter("allPrice");
        String productName = request.getParameter("productName");
        productName=new String(productName.getBytes("ISO-8859-1"),"UTF-8");
        product product = new product();
        product.setName(productName);
        product.setUnitPrice(unitprice);
        product.setAllprice(allprice);
        product.setNumber(number);
        HttpSession session = request.getSession();
        LinkedList<product> list = (LinkedList<product>) session.getAttribute("list");
        if(list==null){
            LinkedList<product> list2 = new LinkedList<product>();
            list2.add(product);
            session.setAttribute("list",list2);
        }else {
            list.add(product);
        }
        request.getRequestDispatcher("ProductList.jsp").forward(request, response);
    }
}
