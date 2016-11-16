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
    <script src="static_taige/js/jquery-2.2.1.min.js"></script>
    <script src="static_taige/js/Index.js"></script>
    <title>YOU</title>

</head>
<body>

<!--顶部-->
<!--<iframe src="top.jsp"  frameborder="0" scrolling="no" width="100%" height="40px"></iframe>-->

<!--顶部-->
<jsp:include page="top.jsp"/>

<!--中间-->
<jsp:include page="public.jsp"/>

<!---->
<img src="static_taige/img/YOU-bg.png" alt="" width="100%" class="img"/>
<div class="main places">当前位置：首页>YOU><span id="text-html">考试须知</span></div>
<!--内容-->
<div class="content">
    <div class="main clear">
        <div class="nav-bar">
            <ul class="bar1">
                <li class="title-li">YOU <i class="icon-reorder"></i></li>
                <li class="bar1-li you-bar1-li1"><a href="<%=path%>/protal/you">免费课申请   <i class="icon-angle-right"></i></a></li>
                <li class="active bar1-li you-bar1-li2"><a href="<%=path%>/protal/you-text">考试须知  <i class="icon-angle-right"></i></a>  </li>
                <li class="bar1-li you-bar1-li3"><a href="<%=path%>/protal/you-mode">上课方式  <i class="icon-angle-right"></i></a>  </li>
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
            <!--考试须知-->
            <div class="article8" style="display: block">
                <h2>考试须知</h2>
                <div class="curriculum curriculum-exam">
                    <h4><i class="icon-circle"></i>思科认证考试须知</h4>
                    <time>2016-08-20</time>
                    <div class="clear">
                        <p>1,填写报名表：</p>
                        <p>报考时考生需提供考生中英文姓名，E_MAIL地址，中英文联系地址及邮编，联系电话和考试号码，名称及考试语种；非首次考试的考生还应再提供考生ID；确认报名表填写无误后交回考管员<span>...查看全文</span>
                        </p>
                        <img src="static_taige/img/cisco.png" alt=""/>
                    </div>
                </div>
                <div class="curriculum curriculum-exam">
                    <h4><i class="icon-circle"></i>华为认证考试须知</h4>
                    <time>2016-08-20</time>
                    <div class="clear">
                        <p>1,填写报名表：</p>
                        <p>报考时考生需提供考生中英文姓名，E_MAIL地址，中英文联系地址及邮编，联系电话和考试号码，名称及考试语种；非首次考试的考生还应再提供考生ID；确认报名表填写无误后交回考管员<span>...查看全文</span>
                        </p>
                        <img src="static_taige/img/huawei.png" alt=""/>
                    </div>
                </div>
                <iframe src="page.jsp" frameborder="0" scrolling="no" width="700px" height="40px;" style="margin-top: 20px"></iframe>
            </div>

        </div>
    </div>
</div>

<!--广告-->
<jsp:include page="QQ-advertise.jsp" />
<!--底部-->
<jsp:include page="footer.jsp"/>
</body>
</html>