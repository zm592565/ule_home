<?php /* Smarty version Smarty-3.1.6, created on 2017-04-29 22:22:19
         compiled from "./Application/Home/View/default\Ask\addAsk.html" */ ?>
<?php /*%%SmartyHeaderCode:1213258fac88a5879b2-25473028%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3b661ab719fefe5cb1198d4499ce9fcd33932625' => 
    array (
      0 => './Application/Home/View/default\\Ask\\addAsk.html',
      1 => 1493475731,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1213258fac88a5879b2-25473028',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_58fac88a58b84',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58fac88a58b84')) {function content_58fac88a58b84($_smarty_tpl) {?><!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<meta name="Keywords" content="<?php echo @WEB_KEYWORD;?>
" />
	<meta name="Description" content="<?php echo @WEB_DESCRIPTION;?>
" />
	<title>提交求助问题</title>
	<!--[if lt IE 9]>
	<script type="text/javascript" src="<?php echo @HOME_LIB_PATH;?>
html5.js"></script>
	<link href="<?php echo @HOME_CSS_PATH;?>
H-ui/H-ui.ie.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<?php echo @HOME_LIB_PATH;?>
respond.min.js"></script>
	<script type="text/javascript" src="<?php echo @HOME_LIB_PATH;?>
PIE_IE678.js"></script>
	<![endif]-->
	<link rel="stylesheet" type="text/css" href="<?php echo @HOME_LIB_PATH;?>
layui/css/layui.css">
	<link rel="stylesheet" type="text/css" href="<?php echo @HOME_CSS_PATH;?>
H-ui/H-ui.min.css" />
	<script type="text/javascript" src="<?php echo @COMMON_JS_PATH;?>
jquery-1.11.2.min.js" ></script>
	<script type="text/javascript" src="<?php echo @HOME_LIB_PATH;?>
layui/layui.js" ></script>
	<link rel="stylesheet" type="text/css" href="<?php echo @HOME_COMMON_CSS;?>
H-ui.tags.css"/>
	<link rel="stylesheet" type="text/css" href="<?php echo @HOME_COMMON_CSS;?>
Hui-iconfont_v1.0.8/iconfont.css"/>
	<script type="text/javascript" src="<?php echo @HOME_JS_PATH;?>
askAdd.js"></script>
	<script type="text/javascript">
		var addPost="<?php echo U('Home/Ask/addAsk');?>
";
		var IndexPage="<?php echo U('Home/Index/index');?>
";
	</script>
</head>
<body>
<form action="" method="post" class="form form form-horizontal pt-20 pl-20 pr-20 pb-20" novalidate="novalidate">
	<table class="table">
		<tr>
			<td width="70" class="text-r">求助标题：</td>
			<td><input type="text" class="input-text radius" placeholder="用5-50个字描述你的求助信息" id="addtitle" style="font-size: 12px;"></td>
		</tr>
		<tr>
			<td class="va-t">详细描述：</td>
			<td>
				<script id="editor" name="content" type="text/plain" style="width:100%;height:200px;"></script>
			</td>
		</tr>
		<tr>
			<td>添加标签：</td>
			<td>
				<div class="Hui-tags input-text radius">
					<div class="Hui-tags-editor cl">
						<i class="Hui-tags-icon Hui-iconfont">&#xe64b;</i>
						<span class="Hui-tags-token">地接社</span>
						<div class="Hui-tags-iptwrap">
							<input type="text" class="Hui-tags-input" maxlength="20" value="">
							<label class="Hui-tags-label">添加相关标签，用空格或回车分隔</label>
						</div>
					</div>
					<input type="hidden" class="Hui-tags-val" id="tags" value="地接,地接社,悠乐地接,">
				</div>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<button type="button" class="btn btn-secondary radius" id="subAdd">发布求助</button>
				<button type="button" class="btn btn-default radius" onclick="product_close()">取消</button>
			</td>
		</tr>
	</table>
</form>
<script type="text/javascript" src="<?php echo @UEDITOR_PATH;?>
ueditor/1.4.3/ueditor.config_home.js"></script>
<script type="text/javascript" src="<?php echo @UEDITOR_PATH;?>
ueditor/1.4.3/ueditor.all.min.js"> </script>
<script type="text/javascript" src="<?php echo @UEDITOR_PATH;?>
ueditor/1.4.3/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">

	var time1;
	$(".Hui-tags-lable").show();
	$(".Hui-tags-input").val("");


		$(document).on("blur",".Hui-tags-input",function(){ 
			/*在这里也要判断是否限制标签数*/
			var isOver=checkTags(4);
			if (isOver) {
				return false;
			}
			set_tag_val(this);
			time1 = setTimeout(function(){
			$(this).parents(".Hui-tags").find(".Hui-tags-list").slideUp(); 
			}, 400);
		});

		function set_tag_val(obj){ 
			var v = $(obj).val().replace(/\s+/g, "");
			var reg=/^,|,$/gi;
			v=v.replace(reg,"");
			v=$.trim(v);
			vLenth=v.length;

			if (vLenth>=6) {
				layer.msg('标签的字数不得超过5!');
				$('.Hui-tags-iptwrap .Hui-tags-input').val('');
				return false;

			}

			if(v!=''){
				$('<span class="Hui-tags-token">'+v+'</span>').insertBefore($(obj).parents(".Hui-tags").find(".Hui-tags-iptwrap"));
				$(obj).val("");
				gettagval(obj);
			}
		}
			$(document).on("keydown",".Hui-tags-input",function(event){
				$(this).next().hide(); 

				if(event.keyCode==13||event.keyCode==108||event.keyCode==32){ 
					/*在这里也要判断是否限制标签数*/
					var isOver=checkTags(4);
					if (isOver) {
						layer.msg('最多可以设置5个标签！');
						return false;
					}
					set_tag_val(this);
				} 
				if(event.keyCode==8){
					if($.trim($(this).val()) == ''){
						var token =$(this).parents(".Hui-tags").find(".Hui-tags-token"); 
						if(token.length>=1){
							$(this).parents(".Hui-tags").find(".Hui-tags-token:last").remove();
							gettagval(this);
						}else{
							$(this).parents(".Hui-tags").find(".Hui-tags-lable").show();
							return false;
						}
					}
				} 
		});


	$(document).on("focus",".Hui-tags-input",function(){

		var isOver=checkTags(4);
		if (isOver) {
			return false;
		}
		clearTimeout(time1);
	});
	$(document).on("click",".Hui-tags-input",function(){
		$(this).find(".Hui-tags-input").focus();
		$(this).find(".Hui-tags-list").slideDown();
	});

	function gettagval(obj){
		var str ="";
		var token =$(obj).parents(".Hui-tags").find(".Hui-tags-token");
		//alert(token.length)
		if(token.length<1){
			$(obj).parents(".Hui-tags").find(".Hui-tags-val").val("");
			return false;
		}
		for(var i = 0;i< token.length;i++){
			str += token.eq(i).text() + ",";
			$(obj).parents(".Hui-tags").find(".Hui-tags-val").val(str);
		}
	}

	
	$(document).on("click",".Hui-tags-has span",function(){
		var taghasV = $(this).text();
		taghasV=taghasV.replace(/(^\s*)|(\s*$)/g,"");
		$('<span class="Hui-tags-token">'+taghasV+'</span>').insertBefore($(this).parents(".Hui-tags").find(".Hui-tags-iptwrap"));
		gettagval(this);
		$(this).parents(".Hui-tags").find(".Hui-tags-input").focus();
	});

	$(document).on("click",".Hui-tags-token",function(){
		var token =$(this).parents(".Hui-tags").find(".Hui-tags-token");
		var it = $(this).parents(".Hui-tags");
		$(this).remove();
		switch(token.length){
			case 1 : it.find(".Hui-tags-lable").show();
			break;
		}
		var str ="";
		var token =it.find(".Hui-tags-token");
		//alert(token.length)
		if(token.length<1){
			it.find(".Hui-tags-val").val("");
			return false;
		}
		for(var i = 0;i< token.length;i++){
			str += token.eq(i).text() + ",";
			it.find(".Hui-tags-val").val(str);
		}		
	});



	function checkTags(num){

			var TagSize=$('.Hui-tags > .Hui-tags-editor > .Hui-tags-token').size();
			if (TagSize>num) {
				$('.Hui-tags-iptwrap .Hui-tags-input').val('');
				return true;
			}else{
				return false;
			}

		}




		$(function(){
			var ue = UE.getEditor('editor',{
				autoHeight: false
			});
		});
		//checkbox的方法
		function check_box(id){
			var checkid="#"+id;  
			if($(checkid).is(":checked")){
				$('input[name="is_comment"]').val('1');
		    }else{  
		    	$('input[name="is_comment"]').val('0');
		    }  

		}

		function product_close(){
			var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
			parent.layer.close(index); //再执行关闭 
		}


	</script>
</body>
</html><?php }} ?>