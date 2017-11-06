<%--
  Created by IntelliJ IDEA.
  User: by
  Date: 2017/5/30
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>基于MVC架构的购物车系统</title>
  <style>
    .sub_btn {
      position:absolute; left:100px; top:100px;
      width:86px;height:30px;
      display: inline-block;
      zoom: 1; /* zoom and *display = ie7 hack for display:inline-block */
      *display: inline;
      vertical-align: baseline;
      margin: 0 2px;
      outline: none;
      cursor: pointer;
      text-align: center;
      font: 14px/100% Arial, Helvetica, sans-serif;
      padding: .5em 2em .55em;
      text-shadow: 0 1px 1px rgba(0,0,0,.6);
      -webkit-border-radius: 3px;
      -moz-border-radius: 3px;
      border-radius: 3px;
      -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
      -moz-box-shadow: 0 1px 2px rgba(0,0,0,.2);
      box-shadow: 0 1px 2px rgba(0,0,0,.2);
      color: #e8f0de;
      border: solid 1px #538312;
      background: #64991e;
      background: -webkit-gradient(linear, left top, left bottom, from(#7db72f), to(#4e7d0e));
      background: -moz-linear-gradient(top,  #7db72f,  #4e7d0e);
      filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#7db72f', endColorstr='#4e7d0e');
    }
    .sub_btn:hover {
      background: #538018;
      background: -webkit-gradient(linear, left top, left bottom, from(#6b9d28), to(#436b0c));
      background: -moz-linear-gradient(top,  #6b9d28,  #436b0c);
      filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#6b9d28', endColorstr='#436b0c');
    }
  </style>
  <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>
<body>
<div align="center"><h1>Vegetable and fruit selling</h1><a href="regist.jsp"><button class="btn btn-danger "style="width: 80px;height: 30px;margin-left: 1100px">regist</button></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="login.jsp"><button class="btn btn-info"style="width: 80px;height: 30px;">login</button></a> <a href="administratorLogin.jsp"><button class="btn btn-success"style="width: 100px;height: 30px;position: relative;left: -1200px">administrator</button></a></div>
<img src="img/vegetable_index.png" style="width: 100%">
<img src="img/fruit_index.png" style="width: 100%">
<a href="ProductList.jsp"><button type="button" class="sub_btn" style="position: absolute;top: 780px;width:200px;height:30px ;margin-left:560px;margin-bottom: 20px"><p style="size: 13px">ProductList</p></button></a>
</body>
</html>
