<%@ page import="model.Memory" %>
<%@ page import="model.MemoryVO" %>
<%@ page import="model.PostVO" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: moontell
  Date: 2017/4/24
  Time: 14:13
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
    MemoryVO certainMemoryVO;
%>

<%
    Memory memory=new Memory();
    boolean certainJinianri=false;
    String id=request.getParameter("id");
    if(id!=null){
        certainJinianri=true;
    }
    String maxid=request.getParameter("max");
    String minid=request.getParameter("min");
    String length=request.getParameter("length");
    int memoryShowedNum=8;
    List<MemoryVO> memoryVOS=memory.getLatestMemoryVOs(memoryShowedNum);
    int maxMemoryId=memory.getMaxMemoryID();
    int minMemoryId=memory.getMinMemoryID();
%>
<div class="container-fluid index">
    <div class="row">
        <div class="col-xs-12 col-md-2">
            <div class="list-group">
                <a href="#" class="list-group-item disabled">纪念日</a>
                <a href="manage.jsp?type=jinianri" class="list-group-item">新增纪念日</a>
                <%
                    //从数据库读取日常记录列表
                    if(!certainJinianri) {
                        if (length != null && maxid != null) {
                            memoryVOS = memory.getLatestMemoryVOsNewer(Integer.parseInt(maxid),memoryShowedNum);
                        }
                        if (length != null && minid != null) {
                            memoryVOS = memory.getLatestMemoryVOsOlder(Integer.parseInt(minid),memoryShowedNum);
                        }
                    }else{
                        memoryVOS=memory.getLatestMemoryVOsNewerAndEqual((Integer.parseInt(id)),memoryShowedNum);


                        certainMemoryVO=memory.getCertainMemoryVO(id);

                    }
                %>
                <%
                    if(memoryVOS.get(0).getsID()!=maxMemoryId){
                %>
                <a href="?type=jinianri&max=<%=memoryVOS.get(0).getsID()%>&length=<%=memoryVOS.size()%>" class="list-group-item">更新</a>
                <%
                    }
                    for(int i=0;i<memoryVOS.size();i++){
                        MemoryVO memoryVO=memoryVOS.get(i);
                %>
                <a href="<%="?type=jinianri&id="+memoryVO.getsID()%>" class="list-group-item"><%=memoryVO.getStitle()%></a>
                <%
                    }
                    if(memoryVOS.get(memoryVOS.size()-1).getsID()!=minMemoryId){
                %>
                <a href="?type=jinianri&min=<%=memoryVOS.get(memoryVOS.size()-1).getsID()%>&length=<%=memoryVOS.size()%>" class="list-group-item">更旧</a>
                <%
                    }
                %>


            </div>
        </div>
        <div  class="col-xs-12 col-md-8">
            <form class="form-inline">
                <!--隐藏域用来存ID信息-->
                <label style="display: none" id="id"><%=certainJinianri?certainMemoryVO.getsID():maxMemoryId+1%></label>
                <!--隐藏域用来存最大ID信息-->
                <label style="display: none" id="maxid"><%=maxMemoryId%></label>

                <div class="form-group">
                    <label for="title">文章标题</label>
                    <input type="text" class="form-control" id="title"  placeholder="请输入文章标题" value="<%=certainJinianri?certainMemoryVO.getStitle():""%>">
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" id="visible"<%=certainJinianri&&certainMemoryVO.getGuest_visible()==1?"checked":""%>>访客可见
                    </label>
                </div>
                <label>图标</label>
                <select class="form-control" id="icon">
                    <option value ="image/cd-icon-location.svg" <%=certainJinianri&&certainMemoryVO.getIcon().equals("image/cd-icon-location.svg")?"selected":""%>>location</option>
                    <option value ="image/cd-icon-picture.svg" <%=certainJinianri&&certainMemoryVO.getIcon().equals("image/cd-icon-picture.svg")?"selected":""%>>picture</option>
                    <option value ="image/cd-icon-movie.svg" <%=certainJinianri&&certainMemoryVO.getIcon().equals("image/cd-icon-movie.svg")?"selected":""%>>movie</option>
                </select>
                <label>图标主题</label>
                <select class="form-control" id="iconTheme">
                    <option value ="picture" style="background-color: #75ce66" <%=certainJinianri&&certainMemoryVO.getIcontheme().equals("picture")?"selected":""%>>picture</option>
                    <option value ="movie" style="background-color: #c03b44" <%=certainJinianri&&certainMemoryVO.getIcontheme().equals("movie")?"selected":""%>>movie</option>
                    </select>
                <button class="btn btn-default" id="delete">删除</button>
                <button class="btn btn-default" id="save" >发布</button>
                <label><%=certainJinianri?certainMemoryVO.getSdate():""%></label>
            </form>
            <div id="editor" style="height: 500px" class="content-body">
                <%=certainJinianri?certainMemoryVO.getStext():"<p>请输入内容...</p>"%>
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


    function addSaveListener(){
        var save=document.getElementById("save");

        save.onclick=function () {
            doAjaxSave();
            return false;
        }
    }

    function addDeleteListenr() {
        var del=document.getElementById("delete");


        del.onclick=function () {
            doAjaxDelete();
            return false;
        }
    }


    function doAjaxDelete() {
        var id=document.getElementById("id").innerHTML;
        var maxid=document.getElementById("maxid").innerHTML;
        var method="delete";
        if(id>maxid){
            alert("请选择要删除的纪念日");
            return false;
        }
        var req=new XMLHttpRequest();
        req.open("GET","AjaxMemoryServlet?method="+method+"&id="+id,true);
        req.send();
        req.onreadystatechange=function () {
            if(req.readyState==4&&this.status==200){
                window.location.href="/moontell/timeIsFlying.jsp";
            }
        }
        return false;

    }

    //----------------------------------------------------------
    function doAjaxSave() {
        //id,version,post_time,guest_visible,
        // post_title,post_content,commentable,isdeleted
        var id=document.getElementById("id").innerHTML;
        var maxid=document.getElementById("maxid").innerHTML;
        var method;
        if(id<=maxid){
            method="update";
        }else method="add";

        var visible=0;
        var visibleCheckbox=document.getElementById('visible');
        if(visibleCheckbox.checked==true){
            visible=1;
        }

        var postTitle=document.getElementById("title").value;
        if(postTitle==""){
            alert("请输入标题");
            return false;
        }
        var icon=window.document.getElementById("icon").value;
        //var icon=$('#icon option:selected').val();
        var iconTheme=window.document.getElementById("iconTheme").value;
        var postContent=editor.$txt.html();
        //alert(id+" "+visible+" "+postContent+" "+icon+" "+iconTheme);



        var req=new XMLHttpRequest();
        req.open("POST","AjaxMemoryServlet",true);
        req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        req.send("method="+method+"&id="+id+"&visible="+visible+"&postTitle="+postTitle+"&postContent="+postContent+"&icon="+icon+"&iconTheme="+iconTheme);
        req.onreadystatechange=function () {
            if(req.readyState==4&&this.status==200){
                window.location.href="/moontell/timeIsFlying.jsp";
            }
        }
        return false;
    }
    addOnLoad(
        addSaveListener()
    );

    addOnLoad(
        addDeleteListenr()
    );

</script>
</body>
</html>
