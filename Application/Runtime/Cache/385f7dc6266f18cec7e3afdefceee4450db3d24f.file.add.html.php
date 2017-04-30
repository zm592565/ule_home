<?php /* Smarty version Smarty-3.1.6, created on 2017-04-02 13:12:56
         compiled from "./Application/Admin/View\Net\add.html" */ ?>
<?php /*%%SmartyHeaderCode:913658e0885845bc68-35366765%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '385f7dc6266f18cec7e3afdefceee4450db3d24f' => 
    array (
      0 => './Application/Admin/View\\Net\\add.html',
      1 => 1490978668,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '913658e0885845bc68-35366765',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'rs' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_58e0885873a31',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58e0885873a31')) {function content_58e0885873a31($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("layout/header.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<body style="min-height:auto;">
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 资讯管理 <span class="c-gray en">&gt;</span> 添加资讯<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a>
</nav>
<div class="page-container">
<form action="<?php echo U('Net/add');?>
" method="post" class="form form-horizontal" id="add_news">
		<input type="hidden" name="uploadurl" value="<?php echo U('Common/upload');?>
">
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>所在国家：</label>
			<div class="formControls col-xs-8 col-sm-2">
				<input type="text" class="input-text" value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['nation'];?>
" name="nation">
			</div>
			
		</div>

		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>中文网点名称：</label>
			<div class="formControls col-xs-8 col-sm-6">
				<input type="text" class="input-text" value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['company_cn'];?>
" name="company_cn">
			</div>
		</div>

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">英文网点名称：</label>
			<div class="formControls col-xs-8 col-sm-6">
				<input type="text" class="input-text" value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['company_en'];?>
" name="company_en">
			</div>
		</div>
		
		

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">所在城市中文名：</label>
			<div class="formControls col-xs-8 col-sm-2">
				<input type="text" class="input-text" value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['city_cn'];?>
" name="city_cn">
			</div>
			
		</div>

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">所在城市英文名：</label>
			<div class="formControls col-xs-8 col-sm-2">
				<input type="text" class="input-text" value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['city_en'];?>
" name="city_en">
			</div>
			
		</div>

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">网点地址中文：</label>
			<div class="formControls col-xs-8 col-sm-3">
				<input type="text" class="input-text" value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['address_cn'];?>
" name="address_cn">
			</div>
			
		</div>

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">网点地址英文：</label>
			<div class="formControls col-xs-8 col-sm-3">
				<input type="text" class="input-text" value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['address_en'];?>
" name="address_en">
			</div>
			
		</div>

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">负责人：</label>
			<div class="formControls col-xs-8 col-sm-2">
				<input type="text" class="input-text" value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['charge'];?>
" name="charge">
			</div>
			
		</div>
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">客服经理：</label>
			<div class="formControls col-xs-8 col-sm-2">
				<input type="text" class="input-text" value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['manager'];?>
" name="manager">
			</div>
			
		</div>

		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">客服电话：</label>
			<div class="formControls col-xs-8 col-sm-3">
				<input type="text" class="input-text" value="<?php echo $_smarty_tpl->tpl_vars['rs']->value['tel'];?>
" name="tel">
			</div>
		</div>



		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">网点简介：</label>
			<div class="formControls col-xs-8 col-sm-7">
				<textarea name="net_info" id="textarea" class="textarea"  placeholder="网点简介...最少输入10个字符" datatype="*10-100" dragonfly="true" nullmsg="备注不能为空！" onKeyUp="textarealength(this,200)"><?php echo $_smarty_tpl->tpl_vars['rs']->value['net_info'];?>
</textarea>
				<p class="textarea-numberbar"><em class="textarea-length">0</em>/200</p>
			</div>
		</div>
		
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">网点图上传：</label>
			<div class="formControls col-xs-8 col-sm-7" id="up_box">
				  <p><a href="javascript:void();" id="upload" class="btn btn-primary radius">浏览图片</a></p>
			</div>
			
		</div>
		
		
		<div class="row cl">
			<label class="form-label col-xs-4 col-sm-2">是否显示：</label>
			<div class="formControls col-xs-8 col-sm-3 skin-minimal">
				<input type="checkbox" onclick="check_box('is_show');" checked="checked" id="is_show" style="margin-top:7px">
			</div>
			<input type="hidden" name="is_show" value="1">
		</div>

		
		<div class="row cl">
			<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
				<button class="btn btn-primary radius" type="submit" id="submit"><i class="Hui-iconfont">&#xe632;</i> 保存并提交</button>
				<a class="btn btn-default radius" href="<?php echo U('Net/index');?>
" >&nbsp;&nbsp;返回列表&nbsp;&nbsp;</a>
			</div>
		</div>
	</form>
	</div>

	<?php echo $_smarty_tpl->getSubTemplate ("layout/commonfooterjs.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
	
	<script type="text/javascript" src="<?php echo @ADMIN_PATH;?>
js/upload.js"></script>
	<script type="text/javascript">		

		//checkbox的方法
		function check_box(id){
			var checkid="#"+id;  
			if($(checkid).is(":checked")){
				$('input[name="is_show"]').val('1');
		    }else{  
		    	$('input[name="is_show"]').val('0');
		    }  

		}

		function product_close(){
			var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
			parent.layer.close(index); //再执行关闭 
		}


	</script>
	
	</body>
</html><?php }} ?>