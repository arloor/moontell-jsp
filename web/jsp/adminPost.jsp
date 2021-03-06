<%@ page import="model.DailyPost" %>
<%@ page import="model.PostVO" %>
<%@ page import="model.PostVersionVO" %>
<%@ page import="java.util.List" %>
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
    <title>MoonTell管理——日常记录</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap -->
    <link href="css/bootstrap.css"  type="text/css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>



    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!--引入wangEditor.css-->
    <link rel="stylesheet" type="text/css" href="wangEditor/css/wangEditor.min.css">

    <!--引入jquery和wangEditor.js-->   <!--注意：javascript必须放在body最后，否则可能会出现问题-->
    <script type="text/javascript" src="wangEditor/js/lib/jquery-1.10.2.min.js"></script>

</head>
<body>
<jsp:include page="manageSideBar.jsp"></jsp:include>
<%!
    PostVO certainPostVO;
%>
<%
    DailyPost dailyPost=new DailyPost();
    boolean certainPost=false;
    String id =request.getParameter("id");
    String version=request.getParameter("version");
    String maxid=request.getParameter("max");
    String minid=request.getParameter("min");
    String length=request.getParameter("length");
    if(id !=null&&version!=null){
        certainPost=true;
    }
    int postShowedNum=8;
    List<PostVO> postVOS=dailyPost.getLatestPostVOs(postShowedNum);
    int maxPostId=dailyPost.getMaxPostID();
    int minPostId=dailyPost.getMinPostId();
%>
<div class="container-fluid index">
    <div class="row">
        <div class="col-xs-12 col-md-2">
            <div class="list-group">
                <a href="#" class="list-group-item disabled">日常记录</a>
                <a href="./manage.jsp" class="list-group-item">新增日常记录</a>
                <%
                    //从数据库读取日常记录列表
                    if(!certainPost) {
                        if (length != null && maxid != null) {
                            postVOS = dailyPost.getLatestPostVOsLater(Integer.parseInt(maxid),postShowedNum);
                        }
                        if (length != null && minid != null) {
                            postVOS = dailyPost.getLatestPostVOsEarlier(Integer.parseInt(minid),postShowedNum);
                        }
                    }else{
                        postVOS=dailyPost.getLatestPostVOsEarlierAndEqual((Integer.parseInt(id)),postShowedNum);


                        certainPostVO=dailyPost.getCertainPostVO(id,version);

                    }
                %>
                <%
                    if(postVOS.get(0).getPostId()!=maxPostId){
                %>
                    <a href="?max=<%=postVOS.get(0).getPostId()%>&length=<%=postVOS.size()%>" class="list-group-item">更新</a>
                <%
                    }
                        for(int i=0;i<postVOS.size();i++){
                            PostVO postVO=postVOS.get(i);
                %>
                            <a href="<%="?id="+postVO.getPostId()+"&version="+postVO.getVersion()%>" class="list-group-item"><%=postVO.getPostTitle()%></a>
                <%
                        }
                        if(postVOS.get(postVOS.size()-1).getPostId()!=minPostId){
                %>
                        <a href="?min=<%=postVOS.get(postVOS.size()-1).getPostId()%>&length=<%=postVOS.size()%>" class="list-group-item">更旧</a>
                <%
                        }
                %>


            </div>
        </div>
        <div  class="col-xs-12 col-md-8">
            <form class="form-inline">
                <!--隐藏域用来存ID信息-->
                <label style="display: none" id="postID"><%=certainPost?certainPostVO.getPostId():maxPostId+1%></label>
                <!--隐藏域用来存将要保存的新纪录的version信息-->
                <label style="display: none" id="version"><%=certainPost?dailyPost.getMaxPostVersionByID(String.valueOf(certainPostVO.getPostId()))+1:0%></label>
                <div class="form-group">
                    <label for="title">文章标题</label>
                    <input type="text" class="form-control" id="title"  placeholder="请输入文章标题" value="<%=certainPost?certainPostVO.getPostTitle():""%>">
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" id="visible"<%=certainPost&&certainPostVO.getGuest_visible()==1?"checked":""%>>访客可见
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" id="commentable"<%=certainPost&&certainPostVO.getCommontable()==1?"checked":""%>>允许评论
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" id="isdeleted"<%=certainPost&&certainPostVO.getIsDeleted()==1?"checked":""%>>是否删除
                    </label>
                </div>
                <button type="submit" class="btn btn-default" id="save">发布</button>
                <label><%=certainPost?certainPostVO.getPost_time():""%></label>
            </form>
            <div id="editor" style="height: 500px" class="content-body">
                <%=certainPost?certainPostVO.getPostsContent():"<p>请输入内容...</p>"%>
            </div>
        </div>
        <div class="col-xs-12 col-md-2">
            <div class="list-group">
                <a href="#" class="list-group-item disabled">历史版本</a>
        <%
            if(certainPost){
                int maxVersion=dailyPost.getMaxPostVersionByID(id);
                int minVersion=dailyPost.getMinPostVersionByID(id);
                String versionbigerthan=request.getParameter("versionbigerthan");

                String versionsmallerthan=request.getParameter("versionsmallerthan");

                List<PostVersionVO> postVersionVOS;
                if(versionbigerthan!=null){
                    postVersionVOS =dailyPost.getPostVersionsLaterAndEqual(id,version,postShowedNum);
                }else if(versionsmallerthan!=null){
                    postVersionVOS =dailyPost.getPostVersionsEarlierAndEqual(id,version,postShowedNum);
                }else{
                    postVersionVOS =dailyPost.getPostVersionsEarlierAndEqual(id,version,postShowedNum);
                }
                int currentMaxVersion= postVersionVOS.get(0).getVersion();
                int currentMinVersion= postVersionVOS.get(postVersionVOS.size()-1).getVersion();


                if(currentMaxVersion!=maxVersion){
                    out.println("<a href=\"?id="+id+"&version="+currentMaxVersion+"&versionbigerthan="+currentMaxVersion+"\" class=\"list-group-item\">更新</a>");
                }

                for (PostVersionVO cell: postVersionVOS
                     ) {
                    out.println("<a href=\"?id="+id+"&version="+cell.getVersion()+"\" class=\"list-group-item\">"+cell.getTime()+"</a>");
                }
                if(currentMinVersion!=minVersion){
                    out.println("<a href=\"?id="+id+"&version="+currentMinVersion+"&versionsmallerthan="+currentMinVersion+"\" class=\"list-group-item\">更旧</a>");
                }
            }
            //如果当前version就是最大的就不显示更新
            //如果
        %>

            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="wangEditor/js/wangEditor.min.js"></script>
<!--这里引用jquery和wangEditor.js-->
<script type="text/javascript">
    var editor = new wangEditor('editor');
    editor.create();
</script>

<!--<script src="js/ajax.js"></script>
<script>addOnLoad(addSubmitListener())</script>-->

<script>
    //定义增加页面加载完成的操作
    function addOnLoad(func){
        var oldOnLoad=window.onload;
        if(typeof oldOnLoad!='function'){
            window.onload=func;
        }else{
            window.onload=function(){
                oldOnLoad();
                func();
            }
        }
    }


    function addSubmitListener(){
        var save=document.getElementById("save");

        save.onclick=function () {
            doAjaxSubmit();
            return false;
        }
    }

    //----------------------------------------------------------
    function doAjaxSubmit() {
        //id,version,post_time,guest_visible,
        // post_title,post_content,commentable,isdeleted
        var id=document.getElementById("postID").innerHTML;
        var version=document.getElementById("version").innerHTML;

        var visible=0;
        var visibleCheckbox=document.getElementById('visible');
        if(visibleCheckbox.checked==true){
            visible=1;
        }

        var commontable=0;
        var commontableCheckbox=document.getElementById('commentable');
        if(commontableCheckbox.checked==true){
            commontable=1;
        }

        var isdeleted=0;
        var isdeletedCheckbox=document.getElementById('isdeleted');
        if(isdeletedCheckbox.checked==true){
            isdeleted=1;
        }

        var postTitle=document.getElementById("title").value;
        if(postTitle==""){
            alert("请输入标题");
            return false;
        }
        var postContent=editor.$txt.html();



        var req=new XMLHttpRequest();
        req.open("POST","AjaxNewPostServlet",true);
        req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        req.send("testConnection=8&"+"id="+id+"&version="+version+"&visible="+visible+"&commontable="+commontable+"&isdeleted="+isdeleted+"&postTitle="+postTitle+"&postContent="+postContent);
        req.onreadystatechange=function () {
            if(req.readyState==4&&this.status==200){
                window.location.href="?id="+id+"&version="+version;
            }
        }

    }
    addOnLoad(
        addSubmitListener()
    );

</script>

</body>
</html>
