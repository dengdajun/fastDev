<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<!--底部-->
<footer>
    <div class="main clear">
        <div class="img"><img src="static_taige/img/footer-login.png" alt=""/></div>
        <div class="address">
            <p><span>电话：</span><span>${information.MOBILE}</span><span>${information.TEL}</span></p>
            <p><span>QQ: </span><span>${information.QQ}</span>QQ群<span>${information.QQ}</span> </p>
            <p><span>地址：</span><b class="address-text">${information.ROUTEDETAILS}</b></p>
        </div>
        <div class="about">
            <p>关于我们：</p>
            <ul class="clear">
                <li>
                    <p class="f-img"><img src="static_taige/img/qq.png" alt="" class="f-img1"/></p>
                    <p>QQ群</p>
                </li>
                <li>
                    <p class="f-img"><img src="static_taige/img/wechat.png" alt="" class="f-img2"/></p>
                    <p>微信</p>
                </li>
                <li>
                    <p class="f-img"><img src="static_taige/img/weibo.png" alt="" class="f-img3"/></p>
                    <p>微博</p>
                </li>
                <li>
                    <p class="f-img"><img src="static_taige/img/collection.png" alt="" class="f-img4"/></p>
                    <p>收藏网站</p>
                </li>
            </ul>
        </div>
    </div>
</footer>
