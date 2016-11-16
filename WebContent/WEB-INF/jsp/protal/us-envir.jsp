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
        <script src="static_taige/js/jquery-2.2.1.min.js"></script>
        <script src="static_taige/js/Index.js"></script>
        <title>US</title>
    </head>
    <body>
        <!--顶部-->
        <jsp:include page="top.jsp"/>

        <!--中间-->
        <jsp:include page="public.jsp"/>
        <!---->
        <!--<div class="pag" style="position: relative;z-index: 998">                &lt;!&ndash;包裹开始&ndash;&gt;-->
        <img src="static_taige/img/about-bg.png" alt="" width="100%" class="img"/>
        <div class="main places">当前位置：首页>US>
            <span id="text-html">教学环境</span>
        </div>
        <!--内容-->
        <div class="content">
            <div class="main clear">
                <div class="nav-bar">
                    <ul class="bar1" id="bar1">
                        <li class="title-li">US
                            <i class="icon-reorder"></i>
                        </li>
                        <li class="bar1-li bar1-li1">
                            <a href="<%=path%>/protal/us">关于我们
                                <i class="icon-angle-right"></i>
                            </a>
                        </li>
                        <li class="bar1-li bar1-li2">
                            <a href="<%=path%>/protal/uscourse">我们的课程
                                <i class="icon-angle-right"></i>
                            </a>
                        </li>
                        <li class="active bar1-li bar1-li3">
                            <a href="<%=path%>/protal/us-envir">教学环境
                                <i class="icon-angle-right"></i>
                            </a>
                        </li>
                        <li class="bar1-li bar1-li4">
                            <a href="<%=path%>/protal/us-advantage">我们的优势
                                <i class="icon-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <ul class="bar2">
                        <li class="active bar2-bg1">
                            <a href="tencent://message/?uin=125439857">在线咨询</a>
                        </li>
                        <li style="padding-left: 0" class="bar2-bg2">
                            <a href="<%=path%>/protal/you">免费课申请</a>
                        </li>
                        <li style="padding-left: 0" class="bar2-bg3">
                            <a href="<%=path%>/protal/videos">视频试听</a>
                        </li>
                    </ul>
                </div>
                <!--右边部分 -->
                <div class="right-con">

                    <!--教学环境   图片-->
                    <div id="article2" style="display: block">
                        <h2>南京</h2>
                        <div class="images clear">
                            <div class="img">
                                <p>
                                    <img src="static_taige/img/classroom.png" alt=""/>
                                </p>
                                <p>南京教室</p>
                            </div>
                            <div class="img">
                                <p>
                                    <img src="static_taige/img/classroom.png" alt=""/>
                                </p>
                                <p>南京教室</p>
                            </div>
                            <div class="img">
                                <p>
                                    <img src="static_taige/img/classroom.png" alt=""/>
                                </p>
                                <p>南京教室</p>
                            </div>
                            <div class="img">
                                <p>
                                    <img src="static_taige/img/classroom.png" alt=""/>
                                </p>
                                <p>南京教室</p>
                            </div>
                            <div class="img">
                                <p>
                                    <img src="static_taige/img/classroom.png" alt=""/>
                                </p>
                                <p>南京教室</p>
                            </div>
                            <div class="img">
                                <p>
                                    <img src="static_taige/img/classroom.png" alt=""/>
                                </p>
                                <p>南京教室</p>
                            </div>
                            <div class="img">
                                <p>
                                    <img src="static_taige/img/classroom.png" alt=""/>
                                </p>
                                <p>南京教室</p>
                            </div>
                            <div class="img">
                                <p>
                                    <img src="static_taige/img/classroom.png" alt=""/>
                                </p>
                                <p>南京教室</p>
                            </div>
                            <div class="img">
                                <p>
                                    <img src="static_taige/img/classroom.png" alt=""/>
                                </p>
                                <p>南京教室</p>
                            </div>
                        </div>
                        <!--分页-->
                        <iframe src="page.jsp" frameborder="0" scrolling="no" width="700px" height="40px"></iframe>
                    </div>


                    <!---->
                </div>
            </div>
        </div>


        <!--</div>      &lt;!&ndash;包裹结尾&ndash;&gt;-->

        <!--广告-->
        <jsp:include page="QQ-advertise.jsp"/>
        <!--底部-->
        <jsp:include page="footer.jsp"/>
    </body>
</html>