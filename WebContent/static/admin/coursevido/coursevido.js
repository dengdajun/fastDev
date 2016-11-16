var locat = (window.location+'').split('/'); 
$(function(){if('tool'== locat[3]){locat =  locat[0]+'//'+locat[2];}else{locat =  locat[0]+'//'+locat[2]+'/'+locat[3];};});
$(top.hangge());

$().ready(function (){
	
	$('#tp').ace_file_input({
		no_file:'请选择图片 ...',
		btn_choose:'选择',
		btn_change:'更改',
		droppable:false,
		onchange:null,
		thumbnail:false, //| true | large
		whitelist:'gif|png|jpg|jpeg',
		//blacklist:'gif|png|jpg|jpeg'
		//onchange:''
		//
	});
	
	$('#tpVido').ace_file_input({
		no_file:'请选择视频文件 ...',
		btn_choose:'选择',
		btn_change:'更改',
		droppable:false,
		onchange:null,
		thumbnail:false, //| true | large
		whitelist:'mp4|flv|gov|mpeg',
		//blacklist:'gif|png|jpg|jpeg'
		//onchange:''
		//
	});
});


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
	if(typeof($("#tpz").val()) == "undefined"){
		if($("#tp").val()=="" || document.getElementById("tp").files[0] =='请选择图片'){
			
			$("#tp").tips({
				side:3,
	            msg:'请选图片',
	            bg:'#AE81FF',
	            time:3
	        });
			return false;
		}
	}
	if(typeof($("#tpVidoz").val()) == "undefined"){
		if($("#tpVido").val()=="" || document.getElementById("tpVido").files[0] =='请选择视频'){
			
			$("#tpVido").tips({
				side:3,
	            msg:'请选视频',
	            bg:'#AE81FF',
	            time:3
	        });
			return false;
		}
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

//过滤类型
function fileType(obj){
	var fileType=obj.value.substr(obj.value.lastIndexOf(".")).toLowerCase();//获得文件后缀名
    if(fileType != '.gif' && fileType != '.png' && fileType != '.jpg' && fileType != '.jpeg'){
    	$("#tp").tips({
			side:3,
            msg:'请上传图片格式的文件',
            bg:'#AE81FF',
            time:3
        });
    	$("#tp").val('');
    	document.getElementById("tp").files[0] = '请选择图片';
    }
}

//过滤类型
function fileTypeVido(obj){
	var fileType=obj.value.substr(obj.value.lastIndexOf(".")).toLowerCase();//获得文件后缀名
    if(fileType != '.mp4' && fileType != '.ogv' && fileType != '.flv' && fileType != '.mpeg'){
    	$("#tpVido").tips({
			side:4,
            msg:'请上传视频格式的文件',
            bg:'#AE81FF',
            time:3
        });
    	$("#tpVido").val('');
    	document.getElementById("tpVido").files[0] = '请选择视频文件';
    }
}


//删除图片
function delP(PATH,PICTURES_ID){
	 /*if(confirm("确定要删除图片？")){
		var url = "banner/deltp.do?PATH="+PATH+"&PICTURES_ID="+PICTURES_ID+"&guid="+new Date().getTime();
		$.get(url,function(data){
			if(data=="success"){
				alert("删除成功!");
				document.location.reload();
			}
		});
	} */
}
