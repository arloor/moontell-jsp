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
    <title>Moontell登陆</title>
    <jsp:include page="head.jsp"></jsp:include>
</head>
<body class="loginbody">
<div class="container">
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
