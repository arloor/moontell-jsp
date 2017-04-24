<%--
  Created by IntelliJ IDEA.
  User: moontell
  Date: 2017/4/21
  Time: 8:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MoonTell管理导航栏</title>
</head>
<body>
<div class="container-fluid index">
    <div class="row">
        <div class="col-xs-12 col-md-12">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="/moontell">首页</a>
                    </div>


                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a href="manage.jsp">日常记录</a></li>
                            <!--
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">纪念日<span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">所有纪念日</a></li>
                                    <li><a href="#">新纪念日</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Separated link</a></li>

                                </ul>
                            </li>
                             -->
                            <li><a href="manage.jsp?type=jinianri">纪念日</a></li>
                            <li><a href="#">编辑首页<span class="sr-only">(current)</span></a></li>
                            <li><a href="#">编辑关于页面</a></li>
                            <li><a href="#">时间锦囊</a></li>

                        </ul>
                        <form class="navbar-form navbar-left">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Search">
                            </div>
                            <button type="submit" class="btn btn-default">Submit</button>
                        </form>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#">Link</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">Another action</a></li>
                                    <li><a href="#">Something else here</a></li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Separated link</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>
        </div>
    </div>
</div>
</body>
</html>
