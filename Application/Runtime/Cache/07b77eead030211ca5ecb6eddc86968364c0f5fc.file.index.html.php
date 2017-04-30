<?php /* Smarty version Smarty-3.1.6, created on 2017-04-12 21:39:10
         compiled from "./Application/Home/View/default\Help\index.html" */ ?>
<?php /*%%SmartyHeaderCode:2874358ecd3f112a081-81663662%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '07b77eead030211ca5ecb6eddc86968364c0f5fc' => 
    array (
      0 => './Application/Home/View/default\\Help\\index.html',
      1 => 1492004209,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2874358ecd3f112a081-81663662',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_58ecd3f11e1a3',
  'variables' => 
  array (
    'slider_menu' => 0,
    'menu' => 0,
    'value' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58ecd3f11e1a3')) {function content_58ecd3f11e1a3($_smarty_tpl) {?>
<script type="text/javascript">
      PageUrl="<?php echo U('Home/Help/PageHelp');?>
";
</script>
<div class="content_box_1200 clearfix pb-20">
      		<div class="help_menu">
      			<p class="c-uleblue"><?php echo $_smarty_tpl->tpl_vars['slider_menu']->value;?>
</p>
      			<ul>
                        <?php if ($_smarty_tpl->tpl_vars['menu']->value){?>
                              <?php  $_smarty_tpl->tpl_vars['value'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['value']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['menu']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['value']->key => $_smarty_tpl->tpl_vars['value']->value){
$_smarty_tpl->tpl_vars['value']->_loop = true;
?>

                              <li name="<?php echo $_smarty_tpl->tpl_vars['value']->value['url'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['value']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['value']->value['class_name'];?>
</li> 

                              <?php } ?>
                        <?php }else{ ?>
                             <li>暂无数据</li> 

                        <?php }?>
      			</ul>
      		</div>
      		<div class="help_content">
      			<p>关于悠乐</p>
      			<div class="content pt-20 pb-20 pl-20 pr-20" style="font-size: 14px;">
      				
      			</div>
      		</div>
      		
      	</div><?php }} ?>