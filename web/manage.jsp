<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: moontell
  Date: 2017/4/18
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MoonTell管理</title>
</head>
<body>
    <%!
        String whichTOInclude=new String();
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
        String type=request.getParameter("type");
        if (hasLogin==false){
            whichTOInclude="jsp/login.jsp";
        }else{
            if(type==null){//type为空，默认管理文章
                whichTOInclude="jsp/adminPost.jsp";
            }else if(type.equals("jinianri")){//type为空，默认管理文章
                whichTOInclude="jsp/adminJinianri.jsp";
            }

        }
        String loginStatus=request.getParameter("loginStatus");
        if(loginStatus!=null&&loginStatus.equals("fail")&&hasLogin==false){
            %>
            <br><br>
            <h2 style="text-align: center">请输入正确的用户名密码</h2>
            <%
        }
    %>
    <jsp:include page="<%=whichTOInclude%>"></jsp:include>

</body>
</html>
