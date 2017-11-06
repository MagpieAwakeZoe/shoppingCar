
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body>
<div><img src="img/loginBackground.jpg" alt="" style="width: 100%;z-index:-1;position: absolute;"></div>
<div style="z-index: 1;position: absolute;">
    <p style="font-size: 60px;color: purple;margin-left: 560px">Find Your Password:</p>
    <div class="form-group">
        <label for="oldpassword" style="font-size: 40px;position: relative;left: 600px;top: 150px">Your old password</label>
        <input type="text" class="form-control" value="${user.password}" id="oldpassword" style="width: 400px;height: 55px;font-size: 40px;position: relative;left: 580px;top: 200px">
    </div>

</div>
</body>
</html>
