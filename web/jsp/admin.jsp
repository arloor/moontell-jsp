<%--
  Created by IntelliJ IDEA.
  User: moontell
  Date: 2017/4/18
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>MoonTell管理</title>
    <jsp:include page="head.jsp"></jsp:include>
    <!--引入wangEditor.css-->
    <link rel="stylesheet" type="text/css" href="wangEditor/css/wangEditor.min.css">

    <!--引入jquery和wangEditor.js-->   <!--注意：javascript必须放在body最后，否则可能会出现问题-->
    <script type="text/javascript" src="wangEditor/js/lib/jquery-1.10.2.min.js"></script>

</head>
<body>



<div class=".container-fluid index">
    <div class="container-fluid">
        <div class="row">
            <!--引入侧边栏-->
            <jsp:include page="sidebar.jsp"></jsp:include>

            <div class="content-body col-xs-12 col-md-9" >
                <div class="row">
                    <!--这里就放ajax返回的内容-->
                    <div  class="col-xs-12 col-md-10 col-md-offset-1" id="content">
                        <div id="div1" style="height: 500px">
                            <p>请输入内容...</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!--这里引用jquery和wangEditor.js-->
<script type="text/javascript">
    // 获取元素
    var textarea = document.getElementById('textarea1');
    // 生成编辑器
    var editor = new wangEditor(textarea);
    editor.create();
</script>




<script type="text/javascript" src="wangEditor/js/wangEditor.min.js"></script>
<!--这里引用jquery和wangEditor.js-->
<script type="text/javascript">
    var editor = new wangEditor('div1');
    editor.create();
</script>
</body>
</html>
