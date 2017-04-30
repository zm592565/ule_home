<?php /* Smarty version Smarty-3.1.6, created on 2017-04-20 22:59:35
         compiled from "./Application/Admin/View\Public\sucess.html" */ ?>
<?php /*%%SmartyHeaderCode:2738358f8ccd77b7f44-36457712%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3ceeb3d0ea72ff80e78594c9b6fe94ac38b451e1' => 
    array (
      0 => './Application/Admin/View\\Public\\sucess.html',
      1 => 1490978668,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2738358f8ccd77b7f44-36457712',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'message' => 0,
    'waitSecond' => 0,
    'jumpUrl' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_58f8ccd7913a1',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58f8ccd7913a1')) {function content_58f8ccd7913a1($_smarty_tpl) {?><!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="ThemeBucket">
  <link rel="shortcut icon" href="#" type="image/png">
  <title><?php echo $_smarty_tpl->tpl_vars['message']->value;?>
</title>
  <link href="<?php echo @COMMON_CSS_PATH;?>
style.css" rel="stylesheet">
  <link href="<?php echo @COMMON_CSS_PATH;?>
style-responsive.css" rel="stylesheet">
</head>

<body class="error-page" style="text-align: center;">

<section>
    <div class="container ">

        <section class="error-wrapper text-center">
            <h1><img alt="" src="<?php echo @ADMIN_IMG_PATH;?>
error.png"></h1>
            <h2><?php echo $_smarty_tpl->tpl_vars['message']->value;?>
</h2>
            <h3>Operation is successful</h3>
            <p style="font-family: 'microsoft yahei';"><b id="wait"><?php echo $_smarty_tpl->tpl_vars['waitSecond']->value;?>
</b>秒后跳转</p>         
            <a id="href" class="back-btn" href="<?php echo $_smarty_tpl->tpl_vars['jumpUrl']->value;?>
">立刻跳转</a>
        </section>

    </div>
</section>
<script type="text/javascript">
(function(){
var wait = document.getElementById('wait'),href = document.getElementById('href').href;
var interval = setInterval(function(){
  var time = --wait.innerHTML;
  if(time <= 0) {
    location.href = href;
    clearInterval(interval);
  };
}, 1000);
})();
</script>
</body>
</html>
<?php }} ?>