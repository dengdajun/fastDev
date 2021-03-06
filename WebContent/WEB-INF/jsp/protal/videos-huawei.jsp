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
    <meta charset="UTF-8" />
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

    <title>VIDEOS</title>

    <style type="text/css">
        .rollBox .LeftBotton{
            height:52px;
            margin-right: 20px;
        }
        .rollBox .RightBotton{
            height:52px;
            margin-left: 20px;
        }
        .btn{
            width: 50px;
            margin-top: 30px;
            cursor:pointer;
            font-size: 60px;
            color: #C3C3C3;
            overflow:hidden;float:left;display:inline;
        }
        .rollBox .Cont{width:530px;overflow:hidden;float:left;}
        .rollBox .ScrCont{width:10000000px;}
        .rollBox .Cont .pic{width:142px;float:left;text-align:center;}
        .rollBox .Cont .pic img{
            width: 130px;
            height: 100px;
            margin-top: 10px;
            display:block;
            cursor: pointer;
        }
        .rollBox .Cont .pic p{line-height:26px;color:#505050;}
    </style>
</head>
<body>


<!--顶部-->
<!--<iframe src="top.jsp"  frameborder="0" scrolling="no" width="100%" height="40px"></iframe>-->


<!--顶部-->
<jsp:include page="top.jsp"/>
<!--中间-->
<jsp:include page="public.jsp"/>
<!---->
<img src="static_taige/img/VIDEOS-bg.png" alt="" width="100%" class="img"/>
<div class="main places">当前位置：首页>VIDEOS>试听</div>
<!--内容-->
<div class="content">
    <div class="main clear">
        <div class="nav-bar">
            <ul class="bar1">
                <li class="title-li">VIDEOS <i class="icon-reorder"></i></li>
                <li class="bar1-li"><a href="<%=path%>/protal/videos">思科课程试听 <i class="icon-angle-right"></i></a> </li>
                <li class="active bar1-li"><a href="<%=path%>/protal/videos-huawei">华为课程试听  <i class="icon-angle-right"></i></a>  </li>
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
            <!--思科课程试听-->
            <div id="article3" class="new-class">
                <h2 style="margin-bottom: 0">华为课程试听</h2>
                <!--上面-->
                <div class="videos clear">
                    <!--上面左边-->
                    <div class="videos-text">
                        <strong>华为讲师2014最新CCNAv2.0至强版课程29</strong>
                        <div class="border"></div>
                        <p>华为讲师2014最新CCNAv2.0至强版课程29</p>
                    </div>
                    <!--上面右边-->
                    <div class="audio-visual">
                        <video  autoplay="true" controls="controls" loop="true" >
                            <source src="static_taige/video/BigBuckBunny_640x360.mp4" type="video/mp4"/>
                            <source src="static_taige/video/BigBuckBunny_640x360.ogv" type="video/ogg"/>
                        </video>
                    </div>
                </div>
                <!--下面-->
                <div align="center">
                    <div class="rollBox clear">
                        <div class="LeftBotton  btn icon-angle-left" onmousedown="ISL_GoUp()" onmouseup="ISL_StopUp()" onmouseout="ISL_StopUp()"></div>
                        <div class="Cont" id="ISL_Cont">
                            <div class="ScrCont">
                                <div id="List1">
                                    <!-- 图片列表 begin -->
                                    <div class="pic">
                                        <img src="static_taige/img/videos1.png" />
                                        <p><a href="" target="_blank">课程</a></p>
                                    </div>

                                    <div class="pic">
                                        <img src="static_taige/img/videos2.png"  />
                                        <p><a href="" target="_blank">课程</a></p>
                                    </div>
                                    <div class="pic">
                                        <img src="static_taige/img/videos1.png" />
                                        <p><a href="" target="_blank">课程</a></p>
                                    </div>
                                    <div class="pic">
                                        <img src="static_taige/img/videos2.png"/>
                                        <p><a href="" target="_blank">课程</a></p>
                                    </div>
                                    <div class="pic">
                                        <img src="static_taige/img/videos1.png" />
                                        <p><a href="" target="_blank">课程</a></p>
                                    </div>
                                    <div class="pic">
                                        <img src="static_taige/img/videos2.png" />
                                        <p><a href="" target="_blank">课程</a></p>
                                    </div>
                                    <div class="pic">
                                        <img src="static_taige/img/videos1.png" />
                                        <p><a href="" target="_blank">课程</a></p>
                                    </div>
                                    <!-- 图片列表 end -->

                                </div>
                                <div id="List2"></div>
                            </div>
                        </div>
                        <div class="RightBotton btn icon-angle-right" onmousedown="ISL_GoDown()" onmouseup="ISL_StopDown()" onmouseout="ISL_StopDown()"></div>
                    </div>
                </div>
                <script src="static_taige/js/page-img.js"></script>        <!-- 必须放这里 -->
            </div>
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
        </div>      <!-- right-con 闭合div -->
    </div>   <!-- main 闭合div -->
</div>


    <!--广告-->
    <jsp:include page="QQ-advertise.jsp"/>
    <!--底部-->
    <jsp:include page="footer.jsp"/>
</body>
</html>