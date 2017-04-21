<%@ page import="model.Memory" %><%--
  Created by IntelliJ IDEA.
  User: moontell
  Date: 2017/4/19
  Time: 20:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Moontell纪念日</title>
    <jsp:include page="jsp/head.jsp"></jsp:include>
    <link rel="stylesheet" href="css/main.css" />
    <link rel="stylesheet" href="css/shijianzhou.css" />
    <style type="text/css">
        h1.top_title{border-bottom:none;background:none;text-align:center;line-height:32px; font-size:32px}
        h1.top_title span{font-size:12px; color:#666;font-weight:500}
    </style>
</head>
<body>
    <jsp:include page="jsp/sidebar.jsp"></jsp:include>
    <div class="content-body col-xs-12 col-md-9" >
        <div class="row">
            <!--这里就放时间轴内容-->
            <div class="col-xs-12 col-md-12 col-md-offset-0" id="content">
                <h1 class="top_title">MoonTell纪念日<br/><span></span></h1>

                <section id="cd-timeline" class="cd-container">
                    <%
                        //todo：进行登陆验证，验证的逻辑还没有写。这里是只要有名为user的cookie就是认为登陆了（单用户）
                        boolean hasLogin=false;
                        Cookie[] cookies=request.getCookies();
                        if(cookies!=null){
                            for (Cookie cookie:cookies
                                    ) {
                                if(cookie.getName().equals("user")){
                                    cookie.getValue().equals("yueyue");
                                    hasLogin=true;
                                }
                            }
                        }else{
                            hasLogin=false;
                        }
                        String id=request.getParameter("id");
                        String version=request.getParameter("version");

                        if(!hasLogin){
                                out.write(new Memory().getGuestVisibleJinianris());
                        }else{
                                out.write(new Memory().getAllJinianris());
                        }

                    %>
                </section>
            </div>
        </div>
    </div>

</body>
</html>
