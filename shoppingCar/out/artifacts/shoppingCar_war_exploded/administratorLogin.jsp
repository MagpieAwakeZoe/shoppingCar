
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
        <h1 style="margin-left: 700px;position: absolute;top: 80px;opacity: 0.8;"><b>管理员账号登录</b></h1>
        <form class="form-horizontal" style="margin-left: 500px;margin-top: 300px">
            <div class="form-group">
                <label for="inputAccount" class="col-sm-2 control-label"><p style="font-size: 25px;color: white">Account&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="loginName" id="inputAccount" placeholder="输入管理员账号" style="width: 400px;height: 45px;font-size: 20px">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword" class="col-sm-2 control-label"><p style="font-size: 25px;color: white">Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" name="LoginPassword" id="inputPassword" placeholder="输入管理员密码"style="width: 400px;height: 45px;font-size: 20px">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="button" class="btn btn-info" style="width: 110px;height: 35px" id="btn">管理员登录</button>
                </div>
            </div>
        </form>
    </div>
</div>
<script>

    var account =  document.getElementById("inputAccount");
    var password = document.getElementById("inputPassword");
    var Obtn = document.getElementById("btn");
    btn.onclick = function () {
        if (account.value =="magpieawake" && password.value =="123456"){
            window.location.href = "order.jsp";
        }else {
            alert("请检查你的管理员用户名和密码是否正确");
        }
    }
</script>
</body>
</html>
