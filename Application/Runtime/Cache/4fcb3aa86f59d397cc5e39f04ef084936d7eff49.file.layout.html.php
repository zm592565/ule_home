<?php /* Smarty version Smarty-3.1.6, created on 2017-04-02 13:12:35
         compiled from "./Application/Admin/View\layout\layout.html" */ ?>
<?php /*%%SmartyHeaderCode:3241588014ad91f2b3-81971238%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4fcb3aa86f59d397cc5e39f04ef084936d7eff49' => 
    array (
      0 => './Application/Admin/View\\layout\\layout.html',
      1 => 1490978668,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3241588014ad91f2b3-81971238',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_588014ada4118',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_588014ada4118')) {function content_588014ada4118($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ("layout/header.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<body>
<header class="navbar-wrapper">
	<div class="navbar navbar-fixed-top">
		<div class="container-fluid cl"> <a class="logo navbar-logo f-l mr-10 hidden-xs" href="./"><?php echo @ADMIN_NAME;?>
</a> <a class="logo navbar-logo-m f-l mr-10 visible-xs" href="/aboutHui.shtml">U-le</a> <span class="logo navbar-slogan f-l mr-10 hidden-xs"><?php echo @ADMIN_VERSION;?>
</span> <a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:;">&#xe667;</a>
			<!-- <nav class="nav navbar-nav">
				<ul class="cl">
					<li class="dropDown dropDown_hover"><a href="javascript:;" class="dropDown_A"><i class="Hui-iconfont">&#xe600;</i> 新增 <i class="Hui-iconfont">&#xe6d5;</i></a>
						<ul class="dropDown-menu menu radius box-shadow">
							<li><a href="javascript:;" onclick="article_add('添加资讯','article-add.html')"><i class="Hui-iconfont">&#xe616;</i> 资讯</a></li>
							<li><a href="javascript:;" onclick="picture_add('添加资讯','picture-add.html')"><i class="Hui-iconfont">&#xe613;</i> 图片</a></li>
							<li><a href="javascript:;" onclick="product_add('添加资讯','product-add.html')"><i class="Hui-iconfont">&#xe620;</i> 产品</a></li>
							<li><a href="javascript:;" onclick="member_add('添加用户','member-add.html','','510')"><i class="Hui-iconfont">&#xe60d;</i> 用户</a></li>
						</ul>
					</li>
				</ul>
			</nav> -->
			<nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
				<ul class="cl">
					<li><?php echo cookie('group');?>
</li>
					<li class="dropDown dropDown_hover"> <a href="#" class="dropDown_A"><?php echo session('user');?>
 <i class="Hui-iconfont">&#xe6d5;</i></a>
						<ul class="dropDown-menu menu radius box-shadow">
							<!-- <li><a href="#">个人信息</a></li> -->
							<li><a _href="<?php echo U('AdminUser/upassword');?>
" data-title="修改密码" onclick="Hui_admin_tab(this)" href="javascript:void(0)">修改密码</a></li>
							<li><a href="javascript:;" onclick="clearDate();">清除缓存</a></li>
							<li><a href="<?php echo U('Common/logout');?>
">退出</a></li>
						</ul>
					</li>
					<li id="Hui-msg"> <a href="#" title="消息"><span class="badge badge-danger">1</span><i class="Hui-iconfont" style="font-size:18px">&#xe68a;</i></a> </li>
					<li id="Hui-skin" class="dropDown right dropDown_hover"> <a href="javascript:;" class="dropDown_A" title="换肤"><i class="Hui-iconfont" style="font-size:18px">&#xe62a;</i></a>
						<ul class="dropDown-menu menu radius box-shadow">
							<li><a href="javascript:;" data-val="default" title="默认（黑色）">黑色</a></li>
							<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
							<li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
							<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
							<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
							<li><a href="javascript:;" data-val="orange" title="绿色">默认(橙色)</a></li>
						</ul>
					</li>
				</ul>
			</nav>
		</div>
	</div>
</header>
<?php echo $_smarty_tpl->getSubTemplate ("layout/left_menu.html", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a></div>
<section class="Hui-article-box">
	<div id="Hui-tabNav" class="Hui-tabNav hidden-xs">
		<div class="Hui-tabNav-wp">
			<ul id="min_title_list" class="acrossTab cl">
				<li class="active"><span title="我的桌面" data-href="<?php echo U('Index/welcome');?>
">我的桌面</span><em></em></li>
			</ul>
		</div>
		<div class="Hui-tabNav-more btn-group"><a id="js-tabNav-prev" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a><a id="js-tabNav-next" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a></div>
	</div>
	<div id="iframe_box" class="Hui-article">
		<div class="show_iframe">
			<div style="display:none" class="loading"></div>
			<iframe scrolling="yes" name="iframepage" id="iframepage" frameborder="0" src="<?php echo U('Index/welcome');?>
"></iframe>
		</div>
	</div>
</section>
<script type="text/javascript" src="<?php echo @ADMIN_PATH;?>
lib/jquery/1.9.1/jquery.min.js"></script> 
<script type="text/javascript" src="<?php echo @ADMIN_PATH;?>
lib/layer/2.1/layer.js"></script> 
<script type="text/javascript" src="<?php echo @ADMIN_PATH;?>
static/h-ui/js/H-ui.js"></script> 
<script type="text/javascript" src="<?php echo @ADMIN_PATH;?>
static/h-ui/js/H-ui.admin.js"></script> 
<script type="text/javascript">
/*资讯-添加*/
function article_add(title,url){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}
/*图片-添加*/
function picture_add(title,url){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}
/*产品-添加*/
function product_add(title,url){
	var index = layer.open({
		type: 2,
		title: title,
		content: url
	});
	layer.full(index);
}
/*用户-添加*/
function member_add(title,url,w,h){
	layer_show(title,url,w,h);
}


/*清除缓存*/
function clearDate(){
	var url="<?php echo U('Common/clearDate');?>
";
	var src=$('#iframepage').attr('src');
	$.ajax({
	   type: "POST",
	   url: url,
	   success: function(msg){
	    layer.open({
		  type: 1,
		  title:'',
		  skin: 'layui-layer-demo', //样式类名
		  shadeClose: true, //点击遮罩关闭
		  content: '<div style="padding:30px;font-size16px;">'+msg.message+'!</div>'
		 });

	   }
	});

}
</script> 

</body>
</html><?php }} ?>