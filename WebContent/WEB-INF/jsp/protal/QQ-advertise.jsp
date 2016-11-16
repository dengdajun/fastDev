<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<div class="advertise">
    <div class="title">太阁IT认证 <span class="img close"><img src="static_taige/img/close.png" alt="" /></span></div>
    <div class="con clear">
        <img src="static_taige/img/QQ-ad.png" alt=""/>
        <div class="text">
            <h2></h2>
            <p></p>
            <span></span>
        </div>
    </div>
    <div class="bottom clear">
        <span class="close">下次再说</span>
        <span> <a href="tencent://message/?uin=125439857" id="bay_window">QQ交谈</a></span>
    </div>
</div>
