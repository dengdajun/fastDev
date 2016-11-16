<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
    <head lang="en">
    <base href="<%=basePath%>">
        <meta charset="UTF-8"/>
        <link rel="stylesheet" href="static_taige/css/puplic.css"/>
        <link rel="stylesheet" href="static_taige/css/All-in.css"/>
        <link rel="stylesheet" href="static_taige/css/font-awesome.css"/>
        <link rel="stylesheet" href="static_taige/css/pages.css"/>
        <script src="static_taige/js/jquery-2.2.1.min.js"></script>
        <script src="static_taige/js/Index.js"></script>
        <script src="static_taige/js/page.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {
            $("#Pagination").pagination("10");
            });
        </script>
        <title>NEWS-discount</title>
    </head>
    <body>
        <!--顶部-->
        <jsp:include page="top.jsp"/>
        <!--中间-->
        <jsp:include page="public.jsp"/>
        <!---->
        <img src="static_taige/img/NEW-bg.png" alt="" width="100%" class="img"/>
        <div class="main places">当前位置：首页>新闻资讯>最新战报</div>
        <!--内容-->
        <div class="content">
            <div class="main clear">
                <div class="nav-bar">
                    <ul class="bar1">
                        <li class="title-li">NEWS
                            <i class="icon-reorder"></i>
                        </li>
                        <li class="bar1-li active">
                            <a href="<%=path%>/protal/news-battlefield">最新战报
                                <i class="icon-angle-right"></i>
                            </a>
                        </li>
                        <li class="bar1-li">
                            <a href="<%=path%>/protal/news">最新开班
                                <i class="icon-angle-right"></i>
                            </a>
                        </li>
                        <li class="bar1-li">
                            <a href="<%=path%>/protal/news-discount">最新优惠
                                <i class="icon-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <ul class="bar2">
                        <li class="active bar2-bg1">
                            <a href="tencent://message/?uin=125439857">在线咨询</a>
                        </li>
                        <li class="bar2-bg2">
                            <a href="<%=path%>/protal/you">免费课申请</a>
                        </li>
                        <li class="bar2-bg3">
                            <a href="<%=path%>/protal/videos">视频试听</a>
                        </li>
                    </ul>
                </div>
                <!--右边部分 -->
                <div class="right-con">
                    <!--最新开班-->
                    <div id="article3" class="new-class">
                        <h2 style="margin-bottom: 0">最新战报</h2>
                        <c:forEach items="${battlefield}" var="n">
                            <div class="curriculum news-curriculum">
                                <h4><i class="icon-circle"></i>${n.title}</h4>
                                <time><fmt:formatDate value="${n.date}" pattern="yyyy-MM-dd"/></time>
                                <div class="clear">
                                    <p>
                                        <b class="clear" style="height:90px;overflow: hidden;overflow:hidden;
                                           text-overflow: ellipsis;">${n.content}</b>
                                        <span class="all">...查看全文<b id="nid" style="display:none;">${n.nid}</b><strong style="display:none;">${n.ntype}</strong></span>
                                    </p>
                                    <img src="static_taige/img/NEWS-bat.png" alt=""/>
                                </div>
                            </div>
                        </c:forEach>
                        <div class="pages clear" style="margin-top:30px;">
                            <div class="page">
                                <div id="Pagination"></div>
                                <div class="searchPage">
                                    <span class="page-sum">共<strong class="allPage">15</strong>页</span>
                                    <span class="page-go">去第<input type="text" />页</span>
                                    <a href="javascript:;" class="page-btn">确定</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--最新战报详情页-->
                    <div id="article6" class="clear">
                        <h2>最新优惠</h2>
                        <div class="title">
                            <h4 id="title"></h4>
                            <p>发布时间：<time id="time"></time>  浏览次数：58</p>
                        </div>
                        <img src="static_taige/img/class-pic.png" alt="" class="class-pic" style="width: 100%;height: 280px"/>
                        <div class="title-bar clear">
                            <p id="content"></p>
                        </div>
                        <!--上下篇-->
                        <div class="move-page">
                            <p id="upnews" class="all"></p>
                            <p id="nextnews" class="all"></p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <script>
            $(function(){
            $(".all").on("click", function(){
            var nid = $(this).find("b").html();
            var ntype = $(this).find("strong").html();
            $.ajax({
            url:"system/tiger/news_battlefield_id?id=" + nid,
            dataType:"json",
            type:"post",
            scriptCharset: 'utf-8',
            success:function(data){
            $("#title").html(data.title);
            $("#time").html(data.date);
            $("#content").html(data.content);
            }
            });
            $.ajax({
            url:"system/tiger/getNextNews?id=" + nid +"&ntype="+ntype,
            dataType:"json",
            type:"post",
            scriptCharset: 'utf-8',
            success:function(data){
            if(data == ""){
            $("#nextnews").html("<i class='icon-caret-down'></i> 下一篇：没有下一篇了");
            }else{
            $("#nextnews").html("<i class='icon-caret-down'></i> 下一篇："+data[0].title+"<b style='display:none;'>"+data[0].nid+"</b><strong style='display:none;'>"+data[0].ntype+"</strong>");
            }
            }
            });
            $.ajax({
            url:"system/tiger/getUpNews?id=" + nid +"&ntype="+ntype,
            dataType:"json",
            type:"post",
            scriptCharset: 'utf-8',
            success:function(data){
            if(data == ""){
            $("#upnews").html("<i class='icon-caret-down'></i> 上一篇：没有上一篇了");
            }else{
            $("#upnews").html("<i class='icon-caret-down'></i> 上一篇："+data[0].title+"<b style='display:none;'>"+data[0].nid+"</b><strong style='display:none;'>"+data[0].ntype+"</strong>");
            }
            }
            });
            });
            })
        </script>
        <!--广告-->
        <jsp:include page="QQ-advertise.jsp"/>
        <!--底部-->
        <jsp:include page="footer.jsp"/>
    </body>
</html>