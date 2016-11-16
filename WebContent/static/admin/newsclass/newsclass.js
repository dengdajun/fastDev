
var locat = (window.location+'').split('/'); 
$(function(){if('tool'== locat[3]){locat =  locat[0]+'//'+locat[2];}else{locat =  locat[0]+'//'+locat[2]+'/'+locat[3];};});

$(top.hangge());


$().ready(function (){
	
	
	var ue = UE.getEditor('editor');
	//日期框
	$('.date-picker').datepicker();
	
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
	
	
});


function save(){

	if($("#TITLE").val()==""){
		$("#TITLE").tips({
			side:3,
            msg:'请输入资讯名称',
            bg:'#AE81FF',
            time:2
        });
		$("#TITLE").focus();
		return false;
	}
	if($("#CLASS_DATE").val()==""){
		$("#CLASS_DATE").tips({
			side:3,
            msg:'请输入发布时间',
            bg:'#AE81FF',
            time:2
        });
		$("#CLASS_DATE").focus();
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
	
	$("#CONTENT").val(getContent());
	
	if($("#CONTENT").val()==""){
		$("#CONTENT").tips({
			side:3,
            msg:'请输入新闻内容',
            bg:'#AE81FF',
            time:2
        });
		$("#CONTENT").focus();
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

//ueditor纯文本
function getContentTxt() {
    
    return UE.getEditor('editor').getContentTxt();
}
//ueditor有标签文本
function getContent() {
    return UE.getEditor('editor').getContent()
}