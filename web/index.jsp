<%@ page import="model.Cover" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>

    <title>Moontell</title>
    <jsp:include page="jsp/head.jsp"></jsp:include>

</head>
<body class="mainbody">
    <div class=".container-fluid index">
        <div class="container-fluid">
            <div class="row">
                <!--引入侧边栏-->
                <jsp:include page="jsp/sidebar.jsp"></jsp:include>

                <div class="content-body col-xs-12 col-md-9" >
                    <div class="row">
                        <!--这里就放ajax返回的内容-->
                        <div  class="col-xs-12 col-md-10 col-md-offset-1" id="content">
                            <!--长宽比6：1的图片最佳-->
                            <%
                                Cover cover=new Cover();
                                out.write(cover.getCoverPictureHtml());
                                out.write(cover.getCover());
                            %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="js/ajax.js"></script>
    <script>//addOnLoad(doAjaxFenlei("mulu?type=notset"));</script>


</body>
</html>