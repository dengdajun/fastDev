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
		
		<link rel="stylesheet" href="static/css/ace.min.css" />
		<link rel="stylesheet" href="static/css/ace-responsive.min.css" />
		<link rel="stylesheet" href="static/css/ace-skins.min.css" />
		<link rel="stylesheet" href="static/assets/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />
		
		<link rel="stylesheet" href="static/css/datepicker.css" /><!-- 日期框 -->
		<script type="text/javascript" src="static/js/jquery-1.7.2.js"></script>
		<script type="text/javascript" src="static/js/jquery.tips.js"></script>
		
<script type="text/javascript">
	
	
	//保存
	function save(){
			if($("#NAME").val()==""){
			$("#NAME").tips({
				side:3,
	            msg:'请输入视频名称',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#NAME").focus();
			return false;
		}
		if($("#LOGO_PATH").val()==""){
			$("#LOGO_PATH").tips({
				side:3,
	            msg:'请输入视频LOGO',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#LOGO_PATH").focus();
			return false;
		}
		if($("#VIDO_PATH").val()==""){
			$("#VIDO_PATH").tips({
				side:3,
	            msg:'请输入视频路径',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#VIDO_PATH").focus();
			return false;
		}
		if($("#VIDO_DESC").val()==""){
			$("#VIDO_DESC").tips({
				side:3,
	            msg:'请输入视频介绍',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#VIDO_DESC").focus();
			return false;
		}
		if($("#VIDO_SORT").val()==""){
			$("#VIDO_SORT").tips({
				side:3,
	            msg:'请输入视频排序',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#VIDO_SORT").focus();
			return false;
		}
		if($("#COURSE_TYPE_ID").val()==""){
			$("#COURSE_TYPE_ID").tips({
				side:3,
	            msg:'请输入所属课程',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#COURSE_TYPE_ID").focus();
			return false;
		}
		if($("#VIDO_TIME").val()==""){
			$("#VIDO_TIME").tips({
				side:3,
	            msg:'请输入视频时长',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#VIDO_TIME").focus();
			return false;
		}
		$("#Form").submit();
		$("#zhongxin").hide();
		$("#zhongxin2").show();
	}
	
</script>
	</head>
<body>
	<form action="coursevido/${msg }.do" name="Form" id="Form" method="post" enctype="multipart/form-data">
		<input type="hidden" name="COURSEVIDO_ID" id="COURSEVIDO_ID" value="${pd.COURSEVIDO_ID}"/>
		<div id="zhongxin">
		<table id="table_report" class="table table-striped table-bordered table-hover">
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">视频名称:</td>
				<td><input type="text" name="NAME" id="NAME" value="${pd.NAME}" maxlength="32" placeholder="这里输入视频名称" title="视频名称"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">视频LOGO:</td>
				<td>
					<input type="file" id="tp" name="tpPic" onchange="fileType(this)" width="100"/>
					<c:if test="${pd != null && pd.LOGO_PATH != '' && pd.LOGO_PATH != null }">
						<a href="<%=basePath%>uploadFiles/uploadImgs/${pd.LOGO_PATH}" target="_blank"><img src="<%=basePath%>uploadFiles/uploadImgs/${pd.LOGO_PATH}" width="80"/></a>
						<input type="button" class="btn btn-mini btn-danger" value="删除" onclick="delP('${pd.LOGO_PATH}','${pd.NEWSITEM_ID }');" />
						<input type="hidden" name="LOGO_PATH" id="tpz" value="${pd.LOGO_PATH }"/>
					</c:if>
				</td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">视频路径:</td>
				<td>
					<input type="file" id="tpVido" name="tpVido" onchange="fileTypeVido(this)" width="100"/>
					<c:if test="${pd != null && pd.VIDO_PATH != '' && pd.VIDO_PATH != null }">
						<input type="hidden" name="VIDO_PATH" id="tpVidoz" value="${pd.VIDO_PATH }"/>
					</c:if>
				</td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">视频介绍:</td>
				<td>
					<textarea style="width: 95%;height: 100px;" name="VIDO_DESC" id="VIDO_DESC" value="${pd.VIDO_DESC}" maxlength="32" placeholder="这里输入视频介绍" title="视频介绍"></textarea>
				</td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">视频排序:</td>
				<td><input type="text" name="VIDO_SORT" id="VIDO_SORT" value="${pd.VIDO_SORT}" maxlength="32" placeholder="这里输入视频排序" title="视频排序"/></td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">所属课程:</td>
				<td>
					<select name="COURSE_TYPE_ID" id="COURSE_TYPE_ID">
						<c:forEach items="${ctypeList}" var="var" varStatus="vs">
							<option value="${var.COURSETYPE_ID}"<c:if test="${pd.COURSE_TYPE_ID eq var.COURSETYPE_ID}">selected="selected"</c:if>> ${var.NAME}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">视频时长:</td>
				<td><input type="text" name="VIDO_TIME" id="VIDO_TIME" value="${pd.VIDO_TIME}" maxlength="32" placeholder="这里输入视频时长" title="视频时长"/></td>
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
		<script type="text/javascript" src="static/js/chosen.jquery.min.js"></script><!-- 下拉框 -->
		<script type="text/javascript" src="static/js/bootstrap-datepicker.min.js"></script><!-- 日期框 -->
		
		
		<script src="static/assets/js/ace/elements.fileinput.js"></script>
		<script src="static/assets/js/ace/ace.js"></script>
		
		<script type="text/javascript" src="static/admin/coursevido/coursevido.js"></script>
		
</body>
</html>