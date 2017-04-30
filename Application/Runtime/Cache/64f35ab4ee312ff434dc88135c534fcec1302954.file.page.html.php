<?php /* Smarty version Smarty-3.1.6, created on 2017-04-11 21:18:14
         compiled from "./Application/Home/View/default\News\page.html" */ ?>
<?php /*%%SmartyHeaderCode:1198558ecd796892d01-47582267%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '64f35ab4ee312ff434dc88135c534fcec1302954' => 
    array (
      0 => './Application/Home/View/default\\News\\page.html',
      1 => 1490978668,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1198558ecd796892d01-47582267',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'header' => 0,
    'page_big' => 0,
    'page_title' => 0,
    'qucik' => 0,
    'value' => 0,
    'page' => 0,
    'footer' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_58ecd796a252e',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58ecd796a252e')) {function content_58ecd796a252e($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_truncate')) include 'D:\\xampp\\htdocs\\ule\\ThinkPHP\\Library\\Vendor\\Smarty\\plugins\\modifier.truncate.php';
?>	<?php echo $_smarty_tpl->tpl_vars['header']->value;?>


	<div class="list_banner">
		<div class="list_banner_p content">
			<p><?php echo $_smarty_tpl->tpl_vars['page_big']->value;?>
</p>
			<div class="bread"><?php echo $_smarty_tpl->tpl_vars['page_big']->value;?>
 > <?php echo smarty_modifier_truncate($_smarty_tpl->tpl_vars['page_title']->value,30,"...",true);?>
</div>
		</div>
	</div>
	
	<div class="show content clearfix">

		<div class="list_nav" style="margin-top:0px;">
				<div class="nav_title">快捷导航</div>
				<ul class="clearfix">
					<?php if ($_smarty_tpl->tpl_vars['qucik']->value){?>
						<?php  $_smarty_tpl->tpl_vars['value'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['value']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['qucik']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['value']->key => $_smarty_tpl->tpl_vars['value']->value){
$_smarty_tpl->tpl_vars['value']->_loop = true;
?>
							<li><a href="<?php echo $_smarty_tpl->tpl_vars['value']->value['url'];?>
"><?php echo $_smarty_tpl->tpl_vars['value']->value['class_name'];?>
</a></li>
						<?php } ?>

					<?php }else{ ?>
						<li>暂无数据</li>
					<?php }?>
					
				</ul>
		</div>
		<div class="list_text clearfix" style="border: 1px solid #eee;margin-top:0px; width: 926px">

			<div class="page_title"><?php echo $_smarty_tpl->tpl_vars['page']->value['title'];?>
</div>
			<div class="page_content">
				<?php echo $_smarty_tpl->tpl_vars['page']->value['content'];?>

			</div>

		</div>
		
	</div>

	<?php echo $_smarty_tpl->tpl_vars['footer']->value;?>
<?php }} ?>