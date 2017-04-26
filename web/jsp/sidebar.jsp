<%--
  Created by IntelliJ IDEA.
  User: moontell
  Date: 2017/4/19
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MoonTell导航栏</title>
</head>
<body>
<!--左边的导航栏begin-->
<div class="col-xs-12 col-md-3 sidebar">

    <!--存放网站logo以及网站明-->
    <div class="img-container">
        <a href="/">
            <img src="https://www.arloor.com/wordpress/wp-content/uploads/2017/03/dsc_7362_1.jpg" class="img-circle img-responsive">
        </a>
    </div>
    <h2 style="text-align: center">Moontell</h2>
    <h4 style="text-align: center">不写下来肯定会忘记</h4>
    <hr>

    <!--分类目录-->
    <div class="mulu" id="mulu">
        <ul>
            <!--mulu?type=daily_post日常记录 mulu?type=time_mail时间锦囊 mulu?type=memory纪念日 mulu?type=about关于站长-->
            <li><a href="post.jsp" class="fenleilink">日常记录</a></li>
            <!--<li><a href="mulu?type=time_mail" class="fenlei">时间锦囊</a></li>-->
            <li><a href="timeIsFlying.jsp" class="fenleilink">纪念日</a></li>
            <!--<li><a href="mulu?type=about" class="fenlei">关于站长</a></li>-->
            <%!
                String manageText="你是悦悦吗";
            %>
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
                if(hasLogin){
                    manageText="管理网站";
                }else{
                    manageText="你是悦悦吗";
                }
            %>

            <li><a href="manage.jsp"  class="manage"><%=manageText%></a></li>
        </ul>
        <hr>
    </div>

    <!--文章列表-->
    <div class="frendlinks">
        <ul>
            <li><a href="https://www.arloor.com" target="_blank">arloor博客</a></li>
        </ul>
        <br>
    </div>
</div>
<!--左边的导航栏结束-->
</body>
</html>
