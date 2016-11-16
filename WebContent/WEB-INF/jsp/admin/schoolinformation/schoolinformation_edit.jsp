<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<base href="<%=basePath%>">
		<meta charset="utf-8" />
		<title></title>
		<meta name="description" content="overview & stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link href="static/css/bootstrap.min.css" rel="stylesheet" />
		<link href="static/css/bootstrap-responsive.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="static/css/font-awesome.min.css" />
		<!-- 下拉框 -->
		<link rel="stylesheet" href="static/css/chosen.css" />
		
		<link rel="stylesheet" href="static/css/ace.min.css" />
		<link rel="stylesheet" href="static/css/ace-responsive.min.css" />
		<link rel="stylesheet" href="static/css/ace-skins.min.css" />
		
		<link rel="stylesheet" href="static/css/datepicker.css" /><!-- 日期框 -->
		<script type="text/javascript" src="static/js/jquery-1.7.2.js"></script>
		<script type="text/javascript" src="static/js/jquery.tips.js"></script>
		
<script type="text/javascript">
	
	
	//保存
	function save(){
			if($("#QQ").val()==""){
			$("#QQ").tips({
				side:3,
	            msg:'请输入qq号',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#QQ").focus();
			return false;
		}
		if($("#QQGROUP").val()==""){
			$("#QQGROUP").tips({
				side:3,
	            msg:'请输入qq组',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#QQGROUP").focus();
			return false;
		}
		if($("#ADDRESS").val()==""){
			$("#ADDRESS").tips({
				side:3,
	            msg:'请输入学校地址',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#ADDRESS").focus();
			return false;
		}
		if($("#ENVIRONMENT").val()==""){
			$("#ENVIRONMENT").tips({
				side:3,
	            msg:'请输入学校环境介绍',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#ENVIRONMENT").focus();
			return false;
		}
		if($("#INTRODUCE").val()==""){
			$("#INTRODUCE").tips({
				side:3,
	            msg:'请输入学校介绍',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#INTRODUCE").focus();
			return false;
		}
		if($("#MOBILE").val()==""){
			$("#MOBILE").tips({
				side:3,
	            msg:'请输入学校联系人电话',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#MOBILE").focus();
			return false;
		}
		if($("#ROUTE").val()==""){
			$("#ROUTE").tips({
				side:3,
	            msg:'请输入到达学校路线',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#ROUTE").focus();
			return false;
		}
		if($("#ROUTEDETAILS").val()==""){
			$("#ROUTEDETAILS").tips({
				side:3,
	            msg:'请输入学校路线详情',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#ROUTEDETAILS").focus();
			return false;
		}
		if($("#TEL").val()==""){
			$("#TEL").tips({
				side:3,
	            msg:'请输入学校电话号码',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#TEL").focus();
			return false;
		}
		$("#Form").submit();
		$("#zhongxin").hide();
		$("#zhongxin2").show();
	}
	
</script>
	</head>
<body>
	<form action="schoolinformation/${msg }.do" name="Form" id="Form" method="post">
		<input type="hidden" name="SCHOOLINFORMATION_ID" id="SCHOOLINFORMATION_ID" value="${pd.SCHOOLINFORMATION_ID}"/>
		<div id="zhongxin">
		<table id="table_report" class="table table-striped table-bordered table-hover">
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">qq号:</td>
				<td><input type="text" name="QQ" id="QQ" value="${pd.QQ}" maxlength="32" placeholder="这里输入qq号" title="qq号"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">qq组:</td>
				<td><input type="text" name="QQGROUP" id="QQGROUP" value="${pd.QQGROUP}" maxlength="32" placeholder="这里输入qq组" title="qq组"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">学校地址:</td>
				<td><input type="text" name="ADDRESS" id="ADDRESS" value="${pd.ADDRESS}" maxlength="32" placeholder="这里输入学校地址" title="学校地址"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">学校环境介绍:</td>
				<td><input type="text" name="ENVIRONMENT" id="ENVIRONMENT" value="${pd.ENVIRONMENT}" maxlength="32" placeholder="这里输入学校环境介绍" title="学校环境介绍"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">学校介绍:</td>
				<td><input type="text" name="INTRODUCE" id="INTRODUCE" value="${pd.INTRODUCE}" maxlength="32" placeholder="这里输入学校介绍" title="学校介绍"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">学校联系人电话:</td>
				<td><input type="text" name="MOBILE" id="MOBILE" value="${pd.MOBILE}" maxlength="32" placeholder="这里输入学校联系人电话" title="学校联系人电话"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">到达学校路线:</td>
				<td><input type="text" name="ROUTE" id="ROUTE" value="${pd.ROUTE}" maxlength="32" placeholder="这里输入到达学校路线" title="到达学校路线"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">学校路线详情:</td>
				<td><input type="text" name="ROUTEDETAILS" id="ROUTEDETAILS" value="${pd.ROUTEDETAILS}" maxlength="32" placeholder="这里输入学校路线详情" title="学校路线详情"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">学校电话号码:</td>
				<td><input type="text" name="TEL" id="TEL" value="${pd.TEL}" maxlength="32" placeholder="这里输入学校电话号码" title="学校电话号码"/></td>
			</tr>
			<tr>
				<td style="text-align: center;" colspan="10">
					<a class="btn btn-mini btn-primary" onclick="save();">保存</a>
					<a class="btn btn-mini btn-danger" onclick="top.Dialog.close();">取消</a>
				</td>
			</tr>
		</table>
		</div>
		
		<div id="zhongxin2" class="center" style="display:none"><br/><br/><br/><br/><br/><img src="static/images/jiazai.gif" /><br/><h4 class="lighter block green">提交中...</h4></div>
		
	</form>
	
	
		<!-- 引入 -->
		<script type="text/javascript">window.jQuery || document.write("<script src='static/js/jquery-1.9.1.min.js'>\x3C/script>");</script>
		<script src="static/js/bootstrap.min.js"></script>
		<script src="static/js/ace-elements.min.js"></script>
		<script src="static/js/ace.min.js"></script>
		<script type="text/javascript" src="static/js/chosen.jquery.min.js"></script><!-- 下拉框 -->
		<script type="text/javascript" src="static/js/bootstrap-datepicker.min.js"></script><!-- 日期框 -->
		<script type="text/javascript">
		$(top.hangge());
		$(function() {
			
			//单选框
			$(".chzn-select").chosen(); 
			$(".chzn-select-deselect").chosen({allow_single_deselect:true}); 
			
			//日期框
			$('.date-picker').datepicker();
			
		});
		
		</script>
</body>
</html>