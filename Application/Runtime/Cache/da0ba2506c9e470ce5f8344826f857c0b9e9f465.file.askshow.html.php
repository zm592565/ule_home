<?php /* Smarty version Smarty-3.1.6, created on 2017-04-26 20:05:39
         compiled from "./Application/Home/View/default\Ask\askshow.html" */ ?>
<?php /*%%SmartyHeaderCode:1691958ff557a6aa042-57335967%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'da0ba2506c9e470ce5f8344826f857c0b9e9f465' => 
    array (
      0 => './Application/Home/View/default\\Ask\\askshow.html',
      1 => 1493208335,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1691958ff557a6aa042-57335967',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_58ff557aa0958',
  'variables' => 
  array (
    'haslogin' => 0,
    'top_member' => 0,
    'key' => 0,
    'value' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58ff557aa0958')) {function content_58ff557aa0958($_smarty_tpl) {?><link rel="stylesheet" type="text/css" href="<?php echo @COMMON_CSS_PATH;?>
/page.css">
<script type="text/javascript">
	var loginIS="<?php echo session('userid');?>
";
	var addUrl="<?php echo U('Home/Ask/addAsk');?>
";
	var loginUrl="<?php echo U('login/index');?>
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
" class="btn btn-success size-M radius ml-10">发布求助</a>
			<?php }?>
			
		</div>
	</form>
</div>
      	<div class="ulehelp_box-gray">
      		<div class="box_1200 clearfix pt-20 pb-20">
      			
      			<nav class="breadcrumb c-999 f-12" style="border: none;"><a class="c-uleblue" href="/">首页</a><span class="c-999 en">&gt;</span>生活怎么用来消遣?</nav>
      			<div class="left_help">

      				<div class="ask_show_box">
      					<div class="pt-20 pl-20 pr-20 pb-20">
      						<p class="f-20 pt-10">有有关纽约到黄石公家公园机场事宜有关纽约到黄石公家公园机场事宜关纽约到黄石公家公园机场事宜（在大家的帮助下已将时间改为4月！）</p>
      						<div class="user_link">
      							<a href="#" class=""><img src="img/person.jpg"/></a>
      							<a href="#" class="c-888">zm592565</a>
      							<span class="c-999 pl-10">发表于 2017/04/16 17:24:36</span>
      						</div>
      						<div class="pt-20 c-777 f-15 lh-30 pb-20">
      							要去美加，要去costco购物，但没有会员卡，但在美加都有朋友（和我去的地方不一样），
      							可以让他们帮忙带costco储值卡，但是不知道如下问题，盼有知道的亲们回答<br />
								1美国的costco储值卡可以不可以在加拿大用，同时加拿大的是否可以在美国使用<br />
								2costco储值卡的有效期是多久<br />
								3购物金额若大于卡余额是否可以用现金或信用卡支付余额<br />
      						</div>
      						<div class="clearfix tags_ask">
      							<a href="#" class="c-999">美国</a>
								<a href="#" class="c-999">美国</a>
								<a href="#" class="c-999">美国</a>
      						</div>
  							<div class="tool_ask_show">
								<div class="answer"><a href="#">0</a>个回答</div>
								<div class="read"><a href="#">8</a>人浏览</div>
								<div class="f-r">
									<button class="btn size-M btn-success">回答问题</button>
									<button class="btn size-M btn-secondary">关注问题</button>
								</div>
							</div>
      					</div>
      					<div class="line"></div>
      					
      					<div class="pt-20 pl-20 pb-20">
      						<div class="ask_cimmit">
      							<div class="support">20</div>
      							<div class="cimmit_user_link f-12 mb-20">
	      							<a href="#" class=""><img src="img/person.jpg"/></a>
	      							<a href="#" class="c-888 f-15">zm592565</a>
	      							<span class="c-999 pl-10">发表于 2017/04/16 17:24:36</span>
	      						</div>
      							<div class="pr-20 c-777 f-15 pb-20 lh-30">
	      							要去美加，要去costco购物，但没有会员卡，但在美加都有朋友（和我去的地方不一样），
	      							可以让他们帮忙带costco储值卡，但是不知道如下问题，盼有知道的亲们回答<br />
									1美国的costco储值卡可以不可以在加拿大用，同时加拿大的是否可以在美国使用<br />
									2costco储值卡的有效期是多久<br />
									3购物金额若大于卡余额是否可以用现金或信用卡支付余额<br />
	      						</div>
	      						<div class="mb-20 clearfix">
	      							<div class="add_ask f-l">添加回答</div>
	      							<div class="do_report f-r">举报</div>
	      						</div>
	      						<div class="border-b"></div>
      						</div>
      					</div>
      					<div class="pt-20 pl-20 pb-20">
      						<div class="ask_cimmit">
      							<div class="support">20</div>
      							<div class="cimmit_user_link f-12 mb-20">
	      							<a href="#" class=""><img src="img/person.jpg"/></a>
	      							<a href="#" class="c-888 f-15">zm592565</a>
	      							<span class="c-999 pl-10">发表于 2017/04/16 17:24:36</span>
	      						</div>
      							<div class="pr-20 c-777 f-15 pb-20 lh-30">
	      							要去美加，要去costco购物，但没有会员卡，但在美加都有朋友（和我去的地方不一样），
	      							可以让他们帮忙带costco储值卡，但是不知道如下问题，盼有知道的亲们回答<br />
									1美国的costco储值卡可以不可以在加拿大用，同时加拿大的是否可以在美国使用<br />
									2costco储值卡的有效期是多久<br />
									3购物金额若大于卡余额是否可以用现金或信用卡支付余额<br />
	      						</div>
	      						<div class="mb-20 clearfix">
	      							<div class="add_ask f-l">添加回答</div>
	      							<div class="do_report f-r">举报</div>
	      						</div>
	      						<div class="border-b"></div>
      						</div>
      					</div>
      					
      					
      					
      					
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
      		
      	</div><?php }} ?>