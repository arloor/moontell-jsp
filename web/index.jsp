<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Moontell</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.css"  type="text/css" rel="stylesheet">
    <link href="style.css" rel="stylesheet" type="text/css">
    <script src="//cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>



    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <div class=".container-fluid index">
        <div class="container-fluid">
            <div class="row">

                <!--左边的导航栏begin-->
                <div class="col-xs-12 col-md-3 sidebar">

                    <!--存放网站logo以及网站明-->
                    <div class="img-container">
                        <a href="/moontell">
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
                            <li><a href="mulu?type=daily_post" class="fenlei">日常记录</a></li>
                            <li><a href="mulu?type=time_mail" class="fenlei">时间锦囊</a></li>
                            <li><a href="mulu?type=memory" class="fenlei">纪念日</a></li>
                            <li><a href="mulu?type=about" class="fenlei">关于站长</a></li>
                            <li><a href="manage.jsp"  class="manage">你是悦悦吗</a></li>
                        </ul>
                        <hr>
                    </div>

                    <!--文章列表-->
                    <div class="contentlist">
                        <ul>
                            <li><a href="daily1">日常记录1</a></li>
                            <li><a href="daily2">日常记录2</a></li>
                            <li><a href="daily3">日常记录3</a></li>
                            <li><a href="daily4">日常记录4</a></li>
                        </ul>
                        <br>
                    </div>
                </div>
                <!--左边的导航栏结束-->

                <div class="content-body col-xs-12 col-md-9" >
                    <div class="row">
                        <!--这里就放ajax返回的内容-->
                        <div class="col-xs-12 col-md-10 col-md-offset-1" id="content">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        //-----------------------------------------------------------
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



        //---------------------------------------------------------
        //定义页面加载完成的操作
        addOnLoad(addMuluAjianting);
        addOnLoad(doAjaxFenlei("mulu?type=notset"));


        //----------------------------------------------------------
        function doAjaxFenlei(href) {
                var req=new XMLHttpRequest();
                req.open("GET",href,true);
                //alert(href);
                req.send();
                req.onreadystatechange=function () {
                    if(req.readyState==4&&this.status==200){
                        //document.getElementById("content").innerHTML=req.responseText;
                        document.getElementById("content").innerHTML=req.responseText;
                    }
                }

        }
        function addMuluAjianting(){
            var mulu=document.getElementById("mulu");
            var fenleiAs=mulu.getElementsByClassName("fenlei");
            //alert(fenleiAs.length);

            for(var i=0;i<fenleiAs.length;i++){
                var a=fenleiAs[i];
                a.onclick=function () {
                    doAjaxFenlei(this.href);
                    return false;
                }
            }


        }
    </script>


</body>
</html>