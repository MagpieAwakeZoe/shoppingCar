<%@ page import="java.util.LinkedList" %>
<%@ page import="Module.product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<div><h1 align="center">您的订单</h1></div>
<div class="container-fluid" style="margin-top: 40px;margin-left: 200px;width: 1120px">
    <div class="list-group">
        <a href="#" class="list-group-item active">
            <div class="container">
                <div class="row">
                    <div class="col-xs-1 col-xs-offset-1">商品名称</div>
                    <div class="col-xs-1 col-xs-offset-1">商品单价</div>
                    <div class="col-xs-1 col-xs-offset-1">商品数量</div>
                    <div class="col-xs-1 col-xs-offset-1">商品总价</div>
                    <div class="col-xs-1 col-xs-offset-1">操作</div>
                </div>
            </div>
        </a>
        <% LinkedList<product> list = (LinkedList) request.getSession().getAttribute("list");
            double sum=0;
            if(list!=null)
                for (int i=0;i<list.size();i++){%>
        <a href="#" class="list-group-item list-group-item-warning">
            <div class="container">
                <div class="row">
                    <div class="col-xs-1 col-xs-offset-1"><%=list.get(i).getName()%></div>
                    <div class="col-xs-1 col-xs-offset-1"><%=list.get(i).getUnitPrice()%></div>
                    <div class="col-xs-1 col-xs-offset-1"><%=list.get(i).getNumber()%></div>
                    <div class="col-xs-1 col-xs-offset-1"><%=list.get(i).getAllprice()%></div>
                </div>
            </div>
            <%sum=Double.parseDouble(list.get(i).getAllprice())+sum;
            }%>
        </a>
    </div>
    <p style="position:relative;left:100px;font-size:24px">产品条目数:<%=list.size()%></p>
    <p style="position:relative;left:100px;font-size:24px">产品总金额:<%=sum%></p>
</div>
</body>
</html>