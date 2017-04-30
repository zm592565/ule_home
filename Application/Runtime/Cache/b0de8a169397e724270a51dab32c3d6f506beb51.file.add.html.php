<?php /* Smarty version Smarty-3.1.6, created on 2017-04-12 21:57:55
         compiled from "./Application/Admin/View\From\add.html" */ ?>
<?php /*%%SmartyHeaderCode:1527958ee3263b73c23-40470596%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b0de8a169397e724270a51dab32c3d6f506beb51' => 
    array (
      0 => './Application/Admin/View\\From\\add.html',
      1 => 1490978668,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1527958ee3263b73c23-40470596',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'rs' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_58ee3263d8af2',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58ee3263d8af2')) {function content_58ee3263d8af2($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("layout/header.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 系统管理 <span class="c-gray en">&gt;</span> 添加来源<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
</nav>
<div class="page-container">

<form action="<?php echo U('From/add');?>
" method="post" class="form form-horizontal">

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>来源名称：</label>
			<div class="formControls col-xs-8 col-sm-3">
				<input type="text" class="input-text" value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['name'];?>
" name="name">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">英文名称：</label>
			<div class="formControls col-xs-8 col-sm-3">
				<input type="text" class="input-text" value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['name_en'];?>
"  name="name_en">
			</div>
		</div>

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">来源链接：</label>
			<div class="formControls col-xs-8 col-sm-3">
				<input type="text" class="input-text" value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['link'];?>
"  name="link">
			</div>
		</div>

		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">来源信息：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea name="name_info" id="textarea" class="textarea"  placeholder="来源信息...最少输入10个字符" datatype="*10-100" dragonfly="true" nullmsg="备注不能为空！" onKeyUp="textarealength(this,200)"><?php echo $_smarty_tpl->tpl_vars['rs']->value['name_info'];?>
</textarea>
				<p class="textarea-numberbar"><em class="textarea-length">0</em>/200</p>
			</div>
		</div>
		
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<button class="btn btn-primary radius" type="button" id="submit"><i class="Hui-iconfont">&#xe632;</i> 保存并提交</button>
				<a class="btn btn-default radius" href="<?php echo U('From/index');?>
">&nbsp;&nbsp;取消&nbsp;&nbsp;</a>
			</div>
		</div>
	</form>
	</div>

	<?php echo $_smarty_tpl->getSubTemplate ("layout/commonfooterjs.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>


	<script type="text/javascript">
	

	$(function(){

		$('#submit').click(function(){

			var name=$("input[name='name']").val();
			var name_en=$("input[name='name_en']").val();
			var link=$("input[name='link']").val();
			var name_info=$('#textarea').val();

			var url="<?php echo U('From/add');?>
";
			var returnUrl="<?php echo U('From/index');?>
";
			if(name==''||link==''){
				layer.alert('内容填写不完整,请补充填写!')
				return false;
			}


			$.post(url,
				{
					name:name,
					name_en:name_en,
					link:link,
					name_info:name_info
				},
			
	          function(data){
	         	console.log(data); //  2pm
	         	if (data.state=="1") {

					layer.confirm(data.message, {
						  btn: ['继续添加','返回列表'] //按钮
						}, function(){
						  window.location.href=url;
						}, function(){
						   window.location.href=returnUrl;
					});

	         	}else{
	         		
	         		layer.confirm(data.message, {
						  btn: ['继续添加','返回列表'] //按钮
						}, function(){
						  window.location.href=url;
						}, function(){
						   window.location.href=returnUrl;
					});


	         	}

	        });

	       

		})

		

	})

	//checkbox的方法
	function check_box(id){
		var checkid="#"+id;  
		if($(checkid).is(":checked")){
			$('input[name="is_menu"]').val('1');
	    }else{  
	    	$('input[name="is_menu"]').val('0');
	    }  

	}

	
	</script>
</body>
</html<?php }} ?>