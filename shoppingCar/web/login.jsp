<%--
  Created by IntelliJ IDEA.
  User: by
  Date: 2017/6/2
  Time: 8:36
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
<div><img src="img/loginBackground.jpg" alt="" style="width: 100%;z-index:-1;position: absolute;">
    <div style="z-index: 1;position: absolute;">
        <h1 style="margin-left: 700px;position: absolute;top: 80px;opacity: 0.8;"><b>登录您的账号</b></h1>
        <form class="form-horizontal" style="margin-left: 500px;margin-top: 300px" action="LoginServlet" method="post">
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-2 control-label"><p style="font-size: 25px;color: white">Account&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="loginName" id="inputEmail3" placeholder="请输入你的账号" style="width: 400px;height: 45px;font-size: 20px">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-2 control-label"><p style="font-size: 25px;color: white">Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" name="LoginPassword" id="inputPassword3" placeholder="请输入你的密码"style="width: 400px;height: 45px;font-size: 20px">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-info" style="width: 110px;height: 35px">登录</button>

                </div>
            </div>
        </form>
        <a href="findPassword.jsp"><button type="submit" class="btn btn-danger" style="position: relative;left: 1080px;top: -110px;width: 110px;height: 35px">忘记密码</button></a>
    </div>
</div>
</body>
</html>
