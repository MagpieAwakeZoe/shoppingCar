<%--
  Created by IntelliJ IDEA.
  User: by
  Date: 2017/6/10
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
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
<div>
    <img src="img/loginBackground.jpg" alt="" style="width: 100%;z-index:-1;position: absolute;">
</div>
<div style="width: 100%;z-index:1;position: absolute;">
    <p align="center" style="font-size: 30px;color: blue;position: relative;top: 50px"><b>订单已提交，请等待送货。</b></p>
    <p align="center" style="font-size: 30px;color: blue;position: relative;top: 75px">感谢您的购买</p>
    <a href="ProductList.jsp"><button type="button" class="btn btn-info" style="width: 140px;height:30px;position: relative;left:588px;top: 200px">返回</button></a>
    <a href="finishOrder.jsp"><button type="button" class="btn btn-danger" style="width: 140px;height:30px;position: relative;left:669px;top: 200px">查看您的订单</button></a>

    <p style="font-size: 20px;color: black;margin-left: 1100px">联系电话:xxxx-xxxx-xxxx-xxxx</p>
</div>

</body>
</html>

