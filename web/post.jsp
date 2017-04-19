<%@ page import="model.DailyPost" %><%--
  Created by IntelliJ IDEA.
  User: moontell
  Date: 2017/4/19
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MoonTell日常记录</title>
    <jsp:include page="jsp/head.jsp"></jsp:include>
</head>
<body class="mainbody">
<div class=".container-fluid index">
    <div class="container-fluid">
        <div class="row">
            <!--引入侧边栏-->
            <jsp:include page="jsp/sidebar.jsp"></jsp:include>

            <div class="content-body col-xs-12 col-md-7" >
                <div class="row">
                    <!--这里就放ajax返回的内容-->
                    <div class="col-xs-12 col-md-10 col-md-offset-1" id="content">
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
                            boolean certainPost=false;
                            if(id!=null&&version!=null){
                                certainPost=true;
                            }

                            if(!certainPost){
                                if(!hasLogin){
                                    out.write(new DailyPost().getGuestVisiblePosts());
                                }else{
                                    out.write(new DailyPost().getAllPosts());
                                }
                            }else{
                                out.write(new DailyPost().getCertainPost(id,version));
                            }
                        %>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="js/ajax.js"></script>

</body>
</html>
