<%--
  Created by IntelliJ IDEA.
  User: moontell
  Date: 2017/4/18
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh_CN">
<head>
    <meta charset="UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Moontell登陆</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.css"  type="text/css" rel="stylesheet">
    <link href="style.css" rel="stylesheet" type="text/css">
    <script src="//cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>



    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container loginbody">
    <div class="row">
        <div class="col-md-offset-4 col-md-4">
            <form class="form-horizontal" method="post" action="verify">
                <br><br>
                <h2 style="text-align: center">MoonTell登陆</h2>
                <label for="user">用户名</label>
                <input id="user" name="user" type="text" class="form-control">

                <label for="password">密码</label>
                <input id="password" name="password" type="password" class="form-control">

                <br>
                <input type="submit" value="确定" class="form-control">
            </form>

        </div>
    </div>
</div>
<br>
</body>
</html>
