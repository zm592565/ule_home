<?php
namespace Home\Controller;
use Think\Controller;
class LoginController extends CommonController {

    public function index(){

    	if (IS_AJAX) {
    		
    		$user=I('post.user','');
    		$pass=I('post.password','');

    		$pattern="/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/";
    		if(preg_match($pattern,$user)){

    			$where['member_email']=$user;
    			$rs=M('member')->field('id,member_code,member_pass,member_email,member_state,member_name')->where($where)->find();
	    		if ($rs) {
	    			$newPass=PassMakes($pass,$rs['member_code']);
	    			if ($newPass==$rs['member_pass']) {
	    				$data['code']=200;
	    				$data['msg']='恭喜您,登录成功！';
	    				session('userid',$rs['id']);
	    				session('usercode',$rs['member_code']);
	    				session('useremail',$rs['member_email']);
	    				session('userstate',$rs['member_state']);
	    				session('username',$rs['member_name']);

	    			}else{
	    				$data['code']=500;
	    				$data['msg']='帐号或者密码不匹配，请重新在输入！';
	    			}

	    		}else{
		    		$data['code']=400;
		    		$data['msg']='您输入的帐号不存在,请重新输入！';
	    		}

    		}else{
    			$data['code']=300;
		    	$data['msg']='非法操作！';
    		};

    		$this->ajaxReturn($data);

    	}




    	/*注入css样式*/
        $css=parent::staticfile_load('css',array('login_reg'));
        $js=parent::staticfile_load('js',array('login'));

        $this->assign('css',$css);
 		$this->assign('js',$js);
        $this->display();
    }


    public function reg(){

    	if (IS_AJAX) {
    		
    		$email=I('post.email');
    		$pass=I('post.pass');

    		$patternEmail = "/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/"; //验证邮箱的正则表达式
			$patternPassword="/^[0-9a-zA-Z_]{6,15}$/";//密码必须是6-15位的字母，数字或者下划线组成

			if(preg_match($patternEmail,$email)&&preg_match($patternPassword,$pass)){

					$date['member_email']=$email;
					$date['member_code']=generate_password();
					$date['member_pass']=PassMakes($pass,$date['member_code']);
					$date['member_reg_day']=time();
					$date['member_from']=0;

					$rs=M('member')->field('member_email,member_code,member_pass,member_reg_day,member_from')->data($date)->add();

					if ($rs) {
						$data['code']=200;
	    				$data['msg']='恭喜您,注册成功！';
					}else{
						$data['code']=400;
	    				$data['msg']='很遗憾,注册失败！';
					}

			}else{

				$data['code']=500;
	    		$data['msg']='帐号或者密码格式不匹配，请重新在输入！';
			}
    		
    		$this->ajaxReturn($data);

    	}





    	/*注入css样式*/
        $css=parent::staticfile_load('css',array('login_reg'));
        $js=parent::staticfile_load('js',array('login'));

        $this->assign('css',$css);
        $this->assign('js',$js);
    	$this->display('reg');

    }


    /*
		注册时验证邮箱格式是否正确
    */
    public function checkReg_Email(){

    	if (IS_AJAX) {
    		$email=I('post.email');
    		$pattern="/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/";
    		if(preg_match($pattern,$email)){

    			$date['member_email']=$email;
    			$rs=M('member')->where($date)->find();
    			if ($rs) {
    				$data['code']=300;
    				$data['msg']='很遗憾,此邮箱已被注册！';
    			}else{
    				$data['code']=200;
    				$data['msg']='恭喜您，此邮箱可以注册！';
    			}

    		}else{

    			$data['code']=400;
    			$data['msg']='请输入正确的邮箱地址';
    		}



    		$this->ajaxReturn($data);
    	}else{

    		$this->error('非法访问！');


    	}



    }



    /*退出登录*/
    public function logoutUser(){
        session(null); 
        $this->redirect('Home/Index/index');

    }





}