<?php /* Smarty version Smarty-3.1.6, created on 2017-04-30 12:34:45
         compiled from "./Application/Home/View/default\Ask\index.html" */ ?>
<?php /*%%SmartyHeaderCode:2560658f74c094bbad2-86295487%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd3d984eb9b7bfe53a9874d9508305746a37e65a7' => 
    array (
      0 => './Application/Home/View/default\\Ask\\index.html',
      1 => 1493526863,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2560658f74c094bbad2-86295487',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_58f74c098559b',
  'variables' => 
  array (
    'haslogin' => 0,
    'latest' => 0,
    'value' => 0,
    'tag' => 0,
    'page' => 0,
    'top_member' => 0,
    'key' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58f74c098559b')) {function content_58f74c098559b($_smarty_tpl) {?><link rel="stylesheet" type="text/css" href="<?php echo @COMMON_CSS_PATH;?>
page.css">
<script type="text/javascript">
	var loginIS="<?php echo session('userid');?>
";
	var addUrl="<?php echo U('Home/Ask/addAsk');?>
";
	var loginUrl="<?php echo U('login/index');?>
";
	var hotHelp="<?php echo U('Home/Ask/AjaxLoadData');?>
";
</script>
<div class="box_ulehelp">
      		<form action="/" class="form">
      			<div class="ask_sub">
      				<input placeholder="发布求助前请先搜索，该问题之前是否已经发布过！" type="text" class="input-text radius" />
      				<button type="button" class="btn btn-warning radius ml-10">搜索答案</button>
      				<?php if ($_smarty_tpl->tpl_vars['haslogin']->value){?>
      				<button type="button" id="send_help" class="btn btn-success radius ml-10">发布求助</button>
      				<?php }else{ ?>
      				<a href="<?php echo U('Home/Login/index');?>
" class="btn btn-success radius ml-10">发布求助</a>
      				<?php }?>
      				
      			</div>
      		</form>
      	</div>
      	<div class="ulehelp_box-gray">
      		<div class="box_1200 clearfix pt-20 pb-20">
      			
      			<div class="left_help clearfix">
      				<ul class="nav_top">
      					<li class="active">最新求助</li>
      					<li onclick="addAjaxLoad(this)">热门求助</li>
      					<li>待回复</li>
      					<a <?php if ($_smarty_tpl->tpl_vars['haslogin']->value){?> href="javascript:;" id="send_box" <?php }else{ ?> href="<?php echo U('Home/Login/index');?>
" <?php }?> class="post_send radius"><i class="Hui-iconfont Hui-iconfont-add"></i>发布求助</a>
      				</ul>
      				<div class="ule_box_left ule_box_left_active clearfix">
      					
      					<?php if ($_smarty_tpl->tpl_vars['latest']->value){?>

      						<?php  $_smarty_tpl->tpl_vars['value'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['value']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['latest']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['value']->key => $_smarty_tpl->tpl_vars['value']->value){
$_smarty_tpl->tpl_vars['value']->_loop = true;
?>
      							<dl>
									<a href="<?php echo $_smarty_tpl->tpl_vars['value']->value['memberid'];?>
" class="face">
										<img src="<?php if ($_smarty_tpl->tpl_vars['value']->value['member_face']){?><?php echo $_smarty_tpl->tpl_vars['value']->value['member_face'];?>
<?php }else{ ?><?php echo @HOME_IMG_PATH;?>
default.jpg<?php }?>" />
										<span class="c666"><?php echo $_smarty_tpl->tpl_vars['value']->value['member_name'];?>
</span>
										<span class="c-999">提了一个问题 - <?php echo $_smarty_tpl->tpl_vars['value']->value['add_time'];?>
</span>
									</a>
									<a class="f-16 text-l pt-10 pb-5 dis_b lh-20 c-uleblue" href='<?php echo $_smarty_tpl->tpl_vars['value']->value['showurl'];?>
' style="margin-bottom: 0px;"><?php echo $_smarty_tpl->tpl_vars['value']->value['ask_title'];?>
</a>
									<div class="text-l c-777 f-14 lh-24 text_Hm36"><?php echo $_smarty_tpl->tpl_vars['value']->value['ask_content'];?>
</div>
									<div class="tool_box clearfix">
									<?php if ($_smarty_tpl->tpl_vars['value']->value['tags']){?>
									<?php  $_smarty_tpl->tpl_vars['tag'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['tag']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['value']->value['tags']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['tag']->key => $_smarty_tpl->tpl_vars['tag']->value){
$_smarty_tpl->tpl_vars['tag']->_loop = true;
?>
										<a href="javascript:;" class="c-999"><?php echo $_smarty_tpl->tpl_vars['tag']->value['name'];?>
</a>
									<?php } ?>
									<?php }?>
										<div class="read_message_box">
											<div class="answer"><a href="#"><?php echo $_smarty_tpl->tpl_vars['value']->value['ask_answer'];?>
</a>个回答</div>
											<div class="read"><a href="#"><?php echo $_smarty_tpl->tpl_vars['value']->value['ask_saw'];?>
</a>人浏览</div>
										</div>
									</div>
								</dl>
      						<?php } ?>



      						<div class="pagination" style="margin-top:20px"><?php echo $_smarty_tpl->tpl_vars['page']->value;?>
</div>
      					<?php }else{ ?>
      						<div class="Huialert Huialert-success"><i class="icon-remove"></i>暂无数据...</div>
      					<?php }?>	

      				</div>
      				<div class="ule_box_left clearfix">
      					
      					<div class="page"></div>
      				</div>
      				<div class="ule_box_left clearfix">
					3
				</div>
      			</div>
      			<div class="right_help">
      				
      				<div class="ule_box_right">
					<div class="help_reg" style="margin-top: 0px">
						加入悠乐帮<br/>让世界的角角落落都留下你的脚印<br/>还在等什么？
						<div class="pt-10">
							<a class="join_btn f-18 radius" target="_blank" href="<?php echo U('Login/reg');?>
">加入悠乐</a>
						</div>
						<div class="lh-24 f-14 text-l pt-10">已有帐号？立即<a target="_blank" href="<?php echo U('Login/index');?>
" style="padding-left: 3px; color: #7ceee7; text-decoration: underline;">登录</a></div>
					</div>
					<div class="posts">
						<p class="f-18">悠友发帖榜<a  target="_blank" href="<?php echo U('Login/reg');?>
">悠乐帮招募中</a></p>

						<?php if ($_smarty_tpl->tpl_vars['top_member']->value){?>

							<?php  $_smarty_tpl->tpl_vars['value'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['value']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['top_member']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['value']->key => $_smarty_tpl->tpl_vars['value']->value){
$_smarty_tpl->tpl_vars['value']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['value']->key;
?>

							<dl>


								<dt <?php if ($_smarty_tpl->tpl_vars['key']->value==0){?>class="one"<?php }elseif($_smarty_tpl->tpl_vars['key']->value==1){?>class="two"<?php }elseif($_smarty_tpl->tpl_vars['key']->value==2){?>class="three"<?php }?>><?php echo $_smarty_tpl->tpl_vars['key']->value+1;?>
</dt>


								<dd>
									<a href="#">
										<img src="<?php if ($_smarty_tpl->tpl_vars['value']->value['member_face']){?><?php echo $_smarty_tpl->tpl_vars['value']->value['member_face'];?>
<?php }else{ ?><?php echo @HOME_IMG_PATH;?>
default.jpg<?php }?>"/>
									</a>
									<a href="#" class="member_name">
										<?php if ($_smarty_tpl->tpl_vars['value']->value['member_name']){?>
										<?php echo $_smarty_tpl->tpl_vars['value']->value['member_name'];?>

										<?php }else{ ?>
										<?php echo $_smarty_tpl->tpl_vars['value']->value['member_email'];?>

										<?php }?>
									</a>
									<span><strong><?php echo $_smarty_tpl->tpl_vars['value']->value['member_integral'];?>
</strong>分</span>
								</dd>
							</dl>

							<?php } ?>

						<?php }?>

						
					</div>
				</div>
      			</div>
      			
      			
      			
      			
      		</div>
      		
      	</div>


<?php }} ?>