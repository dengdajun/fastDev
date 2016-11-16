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
		
		if(typeof($("#HOMEVIDO_ID").val() ) == "undefined" || $("#HOMEVIDO_ID").val() == ''){
			if(typeof($("#tpz").val()) == "undefined"){
				if($("#tp").val()=="" || document.getElementById("tp").files[0] =='请选择视频文件'){
					
					$("#tp").tips({
						side:3,
			            msg:'请选视频文件',
			            bg:'#AE81FF',
			            time:3
			        });
					return false;
				}
			}
		}
		else{
			if($("#VIDO_URL").val()==""){
				$("#tpz").tips({
					side:3,
		            msg:'请输入视频路径',
		            bg:'#AE81FF',
		            time:2
		        });
				$("#tpz").focus();
				return false;
			}	
		}
		if($("#STATE").val()==""){
			$("#STATE").tips({
				side:3,
	            msg:'请输入是否有效',
	            bg:'#AE81FF',
	            time:2
	        });
			$("#STATE").focus();
			return false;
		}
		$("#Form").submit();
		$("#zhongxin").hide();
		$("#zhongxin2").show();
	}
	
	//过滤类型
	function fileType(obj){
		var fileType=obj.value.substr(obj.value.lastIndexOf(".")).toLowerCase();//获得文件后缀名
	    if(fileType != '.mp4' && fileType != '.flv' && fileType != '.flash'){
	    	$("#tp").tips({
				side:3,
	            msg:'请上传视频格式的文件',
	            bg:'#AE81FF',
	            time:3
	        });
	    	$("#tp").val('');
	    	document.getElementById("tp").files[0] = '请选择视频文件';
	    }
	}
	
	function setType(value){
		$("#STATE").val(value);
	}
	
</script>
	</head>
<body>
	<form action="homevido/${msg }.do" name="Form" id="Form" method="post" enctype="multipart/form-data">
		<input type="hidden" name="HOMEVIDO_ID" id="HOMEVIDO_ID" value="${pd.HOMEVIDO_ID}"/>
		<input type="hidden" name="STATE" id="STATE" value="${pd.STATUS}"/>
		<div id="zhongxin">
		<table id="table_report" class="table table-striped table-bordered table-hover">
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">视频路径:</td>
				<td>
					<c:if test="${pd == null || pd.VIDO_URL == '' || pd.VIDO_URL == null }">
					<input type="file" id="tp" name="tp" onchange="fileType(this)"/>
					</c:if>
					<c:if test="${pd != null && pd.VIDO_URL != '' && pd.VIDO_URL != null }">
						<a href="<%=basePath%>uploadFiles/uploadImgs/${pd.VIDO_URL}" target="_blank"><img src="<%=basePath%>uploadFiles/uploadImgs/${pd.VIDO_URL}" width="210"/></a>
						<input type="button" class="btn btn-mini btn-danger" value="删除" onclick="delP('${pd.VIDO_URL}','${pd.HOMEVIDO_ID }');" />
						<input type="hidden" name="VIDO_URL" id="VIDO_URL" value="${pd.VIDO_URL }"/>
					</c:if>
				</td>
			</tr>
			<tr>
				<td style="width:70px;text-align: right;padding-top: 13px;">是否有效:</td>
				<td>
					<label style="float:left;padding-left: 12px;"><input name="form-field-radio" id="form-field-radio1" onclick="setType('1');" <c:if test="${pd.STATE == '1' }">checked="checked"</c:if> type="radio" value="icon-edit"><span class="lbl">有效</span></label>
					<label style="float:left;padding-left: 5px;"><input name="form-field-radio" id="form-field-radio2" onclick="setType('2');" <c:if test="${pd.STATE == '2' }">checked="checked"</c:if> type="radio" value="icon-edit"><span class="lbl">无效</span></label>
				</td>
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