<%--
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
    <link rel="stylesheet" href="main.css" />
    <link rel="stylesheet" href="shijianzhou.css" />
    <style type="text/css">
        h1.top_title{border-bottom:none;background:none;text-align:left;line-height:32px; font-size:32px}
        h1.top_title span{font-size:12px; color:#666;font-weight:500}
    </style>
</head>
<body>
    <jsp:include page="jsp/sidebar.jsp"></jsp:include>
    <div class="content-body col-xs-12 col-md-9" >
        <div class="row">
            <!--这里就放时间轴内容-->
            <div class="col-xs-12 col-md-10 col-md-offset-1" id="content">
                <h1  style="text-align: left" class="top_title">MoonTell纪念日<br/><span>请使用IE9+或Chrome，Firefox高级浏览器或手机访问本页</span></h1>

                <section id="cd-timeline" class="cd-container">
                    <div class="cd-timeline-block">
                        <div class="cd-timeline-img cd-picture">
                            <img src="image/cd-icon-picture.svg" alt="Picture">
                        </div>

                        <div class="cd-timeline-content">
                            <h2>HTML5+CSS3实现的响应式垂直时间轴</h2>
                            <p>网页时间轴一般用于展示以时间为主线的事件，如企业网站常见的公司发展历程等。本文将给大家介绍一款基于HTML5和CSS3的漂亮的垂直时间轴，它可以响应页面布局，适用于HTML5开发的PC和移动手机WEB应用。</p>
                            <!--<a href="http://www.helloweba.com/view-blog-285.html" class="cd-read-more" target="_blank">阅读全文</a>-->
                            <span class="cd-date">2015-01-06</span>
                        </div>
                    </div>
                    <div class="cd-timeline-block">
                        <div class="cd-timeline-img cd-movie">
                            <img src="image/cd-icon-movie.svg" alt="Movie">
                        </div>

                        <div class="cd-timeline-content">
                            <h2>jQuery+PHP动态数字展示效果</h2>
                            <p>我们在一些应用中需要动态展示数据，比如当前在线人数，当前交易总额，当前汇率等等，前端页面需要实时刷新获取最新数据。本文将结合实例给大家介绍使用jQuery和PHP来实现动态数字展示效果。</p>
                            <!--<a href="http://www.helloweba.com/view-blog-285.html" class="cd-read-more" target="_blank">阅读全文</a>-->
                            <span class="cd-date">2014-12-25</span>
                        </div>
                    </div>
                    <div class="cd-timeline-block">
                        <div class="cd-timeline-img cd-picture">
                            <img src="image/cd-icon-picture.svg" alt="Picture">
                        </div>

                        <div class="cd-timeline-content">
                            <h2>PHP操作Session和Cookie</h2>
                            <p>我们跟踪用户信息时需要用到Session和Cookie，比如用户登录验证、记录用户浏览历史，存储购物车数据，限制用户会话有效时间等。今天我们来了解下PHP是如何操作Session和Cookie的。</p>
                            <!--<a href="http://www.helloweba.com/view-blog-285.html" class="cd-read-more" target="_blank">阅读全文</a>-->
                            <span class="cd-date">2014-12-20</span>
                        </div>
                    </div>
                    <div class="cd-timeline-block">
                        <div class="cd-timeline-img cd-movie">
                            <img src="image/cd-icon-movie.svg" alt="Movie">
                        </div>

                        <div class="cd-timeline-content">
                            <h2>jQuery数字加减插件</h2>
                            <p>我们在网上购物提交订单时，在网页上一般会有一个选择数量的控件，要求买家选择购买商品的件数，开发者会把该控件做成可以通过点击实现加减等微调操作，当然也可以直接输入数字件数。本文将介绍常见的几种使用spinner数字微调器来实现数字加减的功能的方法。</p>
                            <!--<a href="http://www.helloweba.com/view-blog-285.html" class="cd-read-more" target="_blank">阅读全文</a>-->
                            <span class="cd-date">2014-12-14</span>
                        </div>
                    </div>
                    <div class="cd-timeline-block">
                        <div class="cd-timeline-img cd-movie">
                            <img src="image/cd-icon-location.svg" alt="Location">
                        </div>

                        <div class="cd-timeline-content">
                            <h2>收集整理的非常有用的PHP函数</h2>
                            <p>项目中经常会需要一些让人头疼的函数，作为开发者应该整理一个自己的函数库，在需要之时复制过来即可。本文作者收集整理数十个PHP项目中常用的函数，保证能正常运行，你只要复制粘贴到你项目中即可。</p>
                            <!--<a href="http://www.helloweba.com/view-blog-285.html" class="cd-read-more" target="_blank">阅读全文</a>-->
                            <span class="cd-date">2014-12-05</span>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>

</body>
</html>
