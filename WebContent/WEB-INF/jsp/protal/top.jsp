<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<div class="top">
    <div style="" class="main top-main clear">
        <div class="top-right clear">
            <a href="<%=path%>/protal/index">返回首页</a>
        </div>
    </div>
</div>
<!--导航-->
<nav>
    <div class="main clear">
        <img src="static_taige/img/logo.png" alt="" id="logo"/>
        <ul class="clear" id="nav">
            <li class="active">
                <a href="<%=path%>/protal/us">Us</a>
            </li>
            <li>
                <a href="<%=path%>/protal/you">You</a>
            </li>
            <li>
                <a href="<%=path%>/protal/news">News</a>
            </li>
            <li>
                <a href="<%=path%>/protal/branch">Branch</a>
            </li>
            <li>
                <a href="<%=path%>/protal/videos">Videos</a>
            </li>
        </ul>
    </div>
</nav>
