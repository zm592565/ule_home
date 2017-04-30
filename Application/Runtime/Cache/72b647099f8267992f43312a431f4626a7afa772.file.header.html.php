<?php /* Smarty version Smarty-3.1.6, created on 2017-04-29 21:26:35
         compiled from "./Application/Home/View/default\public\header.html" */ ?>
<?php /*%%SmartyHeaderCode:2653258a6b72ed9ba17-20530343%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '72b647099f8267992f43312a431f4626a7afa772' => 
    array (
      0 => './Application/Home/View/default\\public\\header.html',
      1 => 1493472393,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2653258a6b72ed9ba17-20530343',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_58a6b72eeb25b',
  'variables' => 
  array (
    'css' => 0,
    'lib' => 0,
    'js' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58a6b72eeb25b')) {function content_58a6b72eeb25b($_smarty_tpl) {?><!DOCTYPE html>
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
		<title><?php echo @WEB_SITE;?>
</title>
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
		<script type="text/javascript" src="<?php echo @COMMON_JS_PATH;?>
jquery-1.11.2.min.js" ></script>
		<?php echo $_smarty_tpl->tpl_vars['css']->value;?>

		<?php echo $_smarty_tpl->tpl_vars['lib']->value;?>

		<?php echo $_smarty_tpl->tpl_vars['js']->value;?>
	
		<!--[if IE 6]>
		<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
		<script>DD_belatedPNG.fix('*');</script>
		<![endif]-->
		<link rel="stylesheet" type="text/css" href="<?php echo @HOME_CSS_PATH;?>
H-ui/H-ui.min.css" />
	</head>
	<body>
		<div id="top">
			<div class="top_box">
				欢迎来到悠乐地接助游平台(u-le.net)，悠乐地接QQ群：19901687。
				<ul>
				<?php if (session('username')&&session('userid')&&session('useremail')){?>
					<li><a href="<?php echo U('Home/Login/index');?>
"><?php if (session('username')){?><?php echo session('username');?>
<?php }else{ ?><?php echo session('useremail');?>
<?php }?></a></li>
					<li><a href="#">我的悠乐</a></li>
					<li><a href="<?php echo U('Home/Login/logoutUser');?>
">安全退出</a></li>
				<?php }else{ ?>
					<li><a href="<?php echo U('Home/Login/index');?>
">登录</a></li>
					<li><a href="<?php echo U('Home/Login/reg');?>
">注册</a></li>
					<li><a href="#">我的悠乐</a></li>
				<?php }?>
					<li><a href="<?php echo U('Home/Help/index');?>
">帮助</a></li>
				
				</ul>
			</div>
		</div>
		<div id="header">
			<div class="top_box nav">
				<a class="logo" href="<?php echo U('Home/Index/index');?>
"></a>
				<div class="menu">
					<a href="<?php echo U('Home/Index/index');?>
">首页</a>
					<a href="#">地接圈</a>
					<a href="#">晒行程</a>
					<a href="#">搭伴游</a>
					<a target="_blank" href="<?php echo U('Home/Ask/index');?>
">悠乐帮</a>
				</div>
				<a class="btn_write f-16" href="#">发布地接</a>
			</div>
		</div><?php }} ?>