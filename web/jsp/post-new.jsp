<%--
  Created by IntelliJ IDEA.
  User: moontell
  Date: 2017/4/22
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MoonTell新日常记录</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap -->
    <link href="../css/bootstrap.css"  type="text/css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet" type="text/css">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="../js/bootstrap.js"></script>



    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!--引入wangEditor.css-->
    <link rel="stylesheet" type="text/css" href="../wangEditor/css/wangEditor.min.css">

    <!--引入jquery和wangEditor.js-->   <!--注意：javascript必须放在body最后，否则可能会出现问题-->
    <script type="text/javascript" src="../wangEditor/js/lib/jquery-1.10.2.min.js"></script>

</head>
<body>
<jsp:include page="manageSideBar.jsp"></jsp:include>
<div class="container index">
    <div class="row">
        <div class="col-xs-12 col-md-4" style="background-color: white">
            <div style="padding-left: 50px">
                <h1>sadasdass</h1>
            </div>
        </div>
        <div  class="col-xs-12 col-md-8">
            <form class="form-inline">
                <div class="form-group">
                    <label for="title">文章标题</label>
                    <input type="text" class="form-control" id="title"  placeholder="请输入文章标题">
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox">访客可见
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" checked>允许评论
                    </label>
                </div>
                <button type="submit" class="btn btn-default">删除</button>
                <button type="submit" class="btn btn-default">发布</button>
            </form>
            <div id="div1" style="height: 500px">
                <p>请输入内容...</p>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="../wangEditor/js/wangEditor.min.js"></script>
<!--这里引用jquery和wangEditor.js-->
<script type="text/javascript">
    var editor = new wangEditor('div1');
    editor.create();
</script>
</body>
</html>
