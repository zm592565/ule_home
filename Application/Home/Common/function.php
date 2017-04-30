<?php
	
	/*一些公共方法*/


	/*会增加积分,并且写入会员操作日志*/
	function sendAask($userid,$member_score_id)
	{
		$do=M('member_score')->where('id='.$member_score_id)->find();
		if($do){
			$addscore=M('member')->where('id='.$userid)->setInc('member_integral',$do['add_score']);
			/*给member_do写入操作日志*/
			if ($addscore) {
				$dos['userID']=$userid;
				$dos['user_do']=$do['name'];
				$dos['add_int']=$do['add_score'];
				$dos['add_time']=time();
				M('member_do')->add($dos);
			}
		}	

	}




?>