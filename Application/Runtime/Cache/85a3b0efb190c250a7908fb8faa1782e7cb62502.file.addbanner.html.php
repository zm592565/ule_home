<?php /* Smarty version Smarty-3.1.6, created on 2017-03-30 13:34:10
         compiled from "./Application/Admin/View\Banner\addbanner.html" */ ?>
<?php /*%%SmartyHeaderCode:1005358dc98d2bf6419-16342071%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '85a3b0efb190c250a7908fb8faa1782e7cb62502' => 
    array (
      0 => './Application/Admin/View\\Banner\\addbanner.html',
      1 => 1474866721,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1005358dc98d2bf6419-16342071',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'banner_class' => 0,
    'rs' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_58dc98d2d088e',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58dc98d2d088e')) {function content_58dc98d2d088e($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("layout/header.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 广告管理 <span class="c-gray en">&gt;</span> 添加广告<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
</nav>
<div class="page-container">

<form action="<?php echo U('Class/addclass');?>
" method="post" class="form form-horizontal">
		<input type="hidden" name="banner_class" value="<?php echo $_smarty_tpl->tpl_vars['banner_class']->value;?>
">
		<input type="hidden" name="uploadurl" value="<?php echo U('Common/upload');?>
">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>广告名称：</label>
			<div class="formControls col-xs-8 col-sm-3">
				<input type="text" class="input-text" value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['banner_name'];?>
" name="banner_name">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>链接地址：</label>
			<div class="formControls col-xs-8 col-sm-3">
				<input type="text" class="input-text" value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['banner_link'];?>
" name="banner_link">
			</div>
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">背景颜色：</label>
			<div class="formControls col-xs-8 col-sm-3">
				<input type="text" class="input-text" value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['banner_color'];?>
" name="banner_color">
			</div>
		</div>
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>缩略图上传：</label>
			<div class="formControls col-xs-8 col-sm-7" id="up_box">
				  <p><a href="javascript:void();" id="upload" class="btn btn-primary radius">浏览图片</a></p>
 
			</div>
			
		</div>

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>广告说明：</label>
			<div class="formControls col-xs-8 col-sm-9">
				<textarea name="banner_info" id="textarea" class="textarea"  placeholder="栏目介绍...最少输入10个字符" datatype="*10-100" dragonfly="true" nullmsg="备注不能为空！" onKeyUp="textarealength(this,200)"><?php echo $_smarty_tpl->tpl_vars['rs']->value['banner_info'];?>
</textarea>
				<p class="textarea-numberbar"><em class="textarea-length">0</em>/200</p>
			</div>
		</div>


		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">是否显示：</label>
			<div class="formControls col-xs-8 col-sm-3 skin-minimal">
				<input type="checkbox" onclick="check_box('check_menu');" id="check_menu" <?php if ($_smarty_tpl->tpl_vars['rs']->value['is_show']==1){?>checked="checked"<?php }?> style="margin-top:7px">
			</div>
			<input type="hidden" name="is_show" value="0">
		</div>
		
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<button class="btn btn-primary radius" type="button" id="submit"><i class="Hui-iconfont">&#xe632;</i> 保存并提交</button>
				<a class="btn btn-default radius" href="<?php echo U('Banner/bannerlist');?>
">&nbsp;&nbsp;取消&nbsp;&nbsp;</a>
			</div>
		</div>
	</form>
	</div>



	<?php echo $_smarty_tpl->getSubTemplate ("layout/commonfooterjs.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

	<script type="text/javascript" src="<?php echo @ADMIN_PATH;?>
js/upload.js"></script>
	<script type="text/javascript">
	

	$(function(){

		$('#submit').click(function(){
			
			var banner_name=$('input[name="banner_name"]').val();
			var banner_class=$('input[name="banner_class"]').val();
			var banner_link=$('input[name="banner_link"]').val();
			var is_show=$('input[name="is_show"]').val();
			var banner_info=$('#textarea').val();
			var banner_color=$('input[name="banner_color"]').val();

			var photosize = $('input[name="photo[]"]').length;
			var photo=new Array();
			for(var i=0;i<photosize;i++){
			 	photo[i] = $('input[name="photo[]"]').eq(i).val();
			}
			var banner_thumb=photo;
			var url="<?php echo U('Banner/addbanner');?>
";
			if(banner_name==''||banner_class==''){
				layer.alert('内容填写不完整,请补充填写!')
				return false;
			}

			$.post(url,
				{
					banner_name:banner_name,
					banner_class:banner_class,
					is_show:is_show,
					banner_link:banner_link,
					banner_color:banner_color,
					banner_thumb:banner_thumb,
					banner_info:banner_info
				},
			
	          function(data){
	         	console.log(data); //  2pm
	         	if (data.state=="1") {

					layer.confirm(data.message, {
						  btn: ['继续添加','返回列表'] //按钮
						}, function(){
						  window.location.href=data.addurl;
						}, function(){
						   window.location.href=data.returnurl;
					});

	         	}else{
	         		
	         		layer.confirm(data.message, {
						  btn: ['继续添加','返回列表'] //按钮
						}, function(){
						  window.location.href=data.url;
						}, function(){
						   window.location.href=data.returnurl;
					});


	         	}

	        });

	       

		})

		

	})

	//checkbox的方法
	function check_box(id){
		var checkid="#"+id;  
		if($(checkid).is(":checked")){
			$('input[name="is_show"]').val('1');
	    }else{  
	    	$('input[name="is_show"]').val('0');
	    }  

	}

	
	</script>
</body>
</html<?php }} ?>