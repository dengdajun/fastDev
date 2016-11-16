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
<jsp:include page="top.jsp"/>
<!--中间-->
<jsp:include page="public.jsp"/>
<!---->
<img src="static_taige/img/YOU-bg.png" alt="" width="100%" class="img"/>
<div class="main places">当前位置：首页>YOU><span id="text-html">免费课申请</span></div>
<!--内容-->
<div class="content">
    <div class="main clear">
        <div class="nav-bar">
            <ul class="bar1">
                <li class="title-li">YOU <i class="icon-reorder"></i></li>
                <li class="active bar1-li you-bar1-li1"><a href="<%=path%>/protal/you">免费课申请   <i class="icon-angle-right"></i></a></li>
                <li class="bar1-li you-bar1-li2"><a href="<%=path%>/protal/you-text">考试须知  <i class="icon-angle-right"></i></a>  </li>
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

            <!--免费课申请-->
            <div class="article9" style="display: block">
                <h2>免费课申请</h2>
                <form action="">
                    <div><span>姓名：</span> <input type="text" /> </div>
                    <div><span>电话：</span> <input type="text" /></div>
                    <div><span>QQ：</span> <input type="text" /></div>
                    <div><span>咨询课程：</span> <input type="text" /></div>
                    <div><span>专业：</span> <input type="text" /></div>
                    <div><span style="float: left">备注：</span> <textarea></textarea></div>
                    <div style="text-align: left" class="clear">
                        <span style="float: left">验证码：</span>
                        <input type="text" class="verification" style="float: left"/>
                        <span class="var-img" style="cursor: pointer"><img src="static_taige/img/cisco.png" alt=""/></span>
                    </div>
                    <div>
                        <span></span>
                        <input type="submit" value="提交" class="btn submit"/>
                        <input type="submit" value="重置" class="btn reset"/>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>

<!--广告-->
<jsp:include page="QQ-advertise.jsp"/>
<!--底部-->
<jsp:include page="footer.jsp"/>
</body>
</html>