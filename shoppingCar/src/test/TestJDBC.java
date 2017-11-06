package test;

import JDBC.DBhandle2;
import JDBC.DBhandle3;
import Module.product;
import Module.user;
import org.junit.Test;

/**
 * Created by by on 2017/6/8.
 */
public class TestJDBC {

    @Test
    public void test1(){
        DBhandle2 db = new DBhandle2();
        user user = new user("111","222","333");
        db.insertUser(user);
    }
    @Test
    public void test2(){
        DBhandle2 db = new DBhandle2();
        user user = db.selectByUserName("aaa");
        System.out.println(user.getPassword());
    }
    @Test
    public void test3(){
        DBhandle2 db = new DBhandle2();
        user user = db.login("aaa","bbb");
        System.out.println(user.getPassword());
    }
    @Test
    public void test4(){
        DBhandle2 db = new DBhandle2();
        user user = db.findPassword("aaa","ccc");
        System.out.println(user.getPassword());
    }
    @Test
    public void test5(){
        DBhandle3 db = new DBhandle3();
        product product = new product("111","222","333","555");
        db.insert(product);
    }
}
