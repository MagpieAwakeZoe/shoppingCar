<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        .font{
            margin-left: 30px;
        }
        a:link{
            text-decoration: none;
        }
        a:visited{
            text-decoration: none;
        }
        a:hover{
            text-decoration: none;
        }
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
</head>
<body>
<div align="center"><h1>Vegetable and fruit selling</h1></div>
<img src="img/vegetable_index.png" style="width: 100%">
<img src="img/L6.jpg" alt="" style="margin-left: 80px;margin-top:80px">
<br><br><br>
<div style="position: absolute;width:800px;height:330px;margin-left: 600px;margin-top: -375px;">
    <form action="${pageContext.request.contextPath}/ShoppingCarServlet" style="position: absolute;margin-left: 400px;margin-top: -375px">
        <input type="text" value="   洋    葱" name="productName" style="position: relative;top: 380px;left: -300px;font-size: 30px;width: 140px;height: 50px;color: red">
        <p style="margin-left: -290px;font-size: 60px;position: absolute;top: 420px">价格:</p><input type="text" name="unitPrice" value="3" style="margin-left: -290px;margin-top: 25px;font-size: 60px;position: absolute;top: 600px;width:125px;height: 50px"></input>
        <table>
            <tr>
                <td><p style="font-size: 30px;position: absolute;top: 350px">购买数量:</p></td>
                <td><input type="text" name="priceNum" id="buy" style="width: 70px;height: 50px;font-size: 50px;position: absolute;top: 370px;left: 200px"></td>
            </tr>
            <tr>
                <td><p style="font-size: 30px;position: absolute;top: 470px;left: -40px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价:</p></td>
                <td><input type="text" name="allPrice"  id="all" style="width: 140px;height: 50px;font-size: 50px;position: absolute;top: 490px;left: 200px" readonly="true"></td>
                <td><a href=""><button type="submit" class="sub_btn" style="position: absolute;width:200px;height:50px;margin-left: -80px;margin-top: 525px"><p style="size: 13px">确定你的选择</p></button></a></td>
            </tr>
        </table>
    </form>
    <a href="shoppingCar.jsp"><img src="img/shoppingcar.png" alt="" style="position:absolute;left:695px;top:223px;"></a>
</div>
<script>
    var BUY = document.getElementById("buy");
    var ALL = document.getElementById("all");
    BUY.onblur=function () {
        ALL.value = 3 * BUY.value;
    }
</script>
</body>
</html>
