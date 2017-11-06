package JDBC;

import Module.product;
import Module.user;

import java.sql.*;
import java.lang.String;

/**
 * Created by by on 2017/6/7.
 */
public class DBhandle3{
    Connection conn = DBCon.getConn();



    public product selectByProductName(String productName)
    {
        String sql = "SELECT * FROM PRODUCT WHERE PRODUCTNAME= '"+productName+"'";
        ResultSet rs = null;
        product product = new product();
        try {
            Statement statement = conn.createStatement();
            rs = statement.executeQuery(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            if(rs.next()){
                product.setName(rs.getString("name"));
                product.setNumber(rs.getString("number"));
                product.setAllprice(rs.getString("Allprice"));
                product.setUnitPrice(rs.getString("unitPrice"));
                return product;
            }else {
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


    public int insert(product newProduct)
    {
        String sql = "INSERT INTO product(PRODUCTNAME,PRODUCTNUM,PRODUCTALLPRICE,PRODUCTUNITPRICE) VALUES ( '"+
                newProduct.getName()+"', '"+
                newProduct.getNumber()+"', '"+
                newProduct.getAllprice()+"', '"+
                newProduct.getUnitPrice()+"' )";
        System.out.println(sql);
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
}
