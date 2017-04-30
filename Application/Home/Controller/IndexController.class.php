<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends CommonController {
    public function index(){
        $css=parent::staticfile_load('css',array('header','index','footer'));
        $js=parent::staticfile_load('js',array('login','index'));
        $libfile = array('css' =>array('swiper/swiper-3.4.0.min') ,'js'=>array('swiper/swiper-3.4.0.jquery.min','navfix/navFixed','layer/layer'));
        $lib=parent::staticfile_load('lib',$libfile);
    	echo $header=self::header($css,$js,$lib);
    	echo $index_data=self::index_data();
    	echo $footer=self::footer();

    }

    public function header($css,$js,$lib){
	   
    	$this->assign('css',$css);
        $this->assign('js',$js);
        $this->assign('lib',$lib);
    	return $this->display('public/header');
    }



    public function index_data(){ 	

        // // 1. 初始化
        //  $ch = curl_init();
        //  // 2. 设置选项，包括URL
        //  curl_setopt($ch,CURLOPT_URL,"http://www.devdo.net");
        //  curl_setopt($ch,CURLOPT_RETURNTRANSFER,1);
        //  curl_setopt($ch,CURLOPT_HEADER,0);
        //  // 3. 执行并获取HTML文档内容
        //  $output = curl_exec($ch);
        //  if($output === FALSE ){
        //  echo "CURL Error:".curl_error($ch);
        //  }
        //  // 4. 释放curl句柄
        //  curl_close($ch);


        $this->display();

    }


    public function footer(){


        $where['pid']=0;
        $rs=M('class')->where($where)->limit(5)->select();
        $data_arr=array();
        foreach ($rs as $key => $value) {
            if ($value['pid']==0) {
                $data_arr[$key]['top']=$value;
               
                $mast=array();
                $list=M('class')->where('pid='.$value['id'])->limit(5)->select();
                foreach ($list as $keys => $values) {
                    
                    if ($values['class_type']==1) {

                        switch ($values['id']) {
                            case 29:
                                $mast[$keys]['url']=U('Api/index');/*包裹追踪*/
                                break;
                            case 28:
                                $mast[$keys]['url']=U('Net/index');/*网点查询*/
                                break;
                            default:
                                $mast[$keys]['url']=U('News/pageshow?id='.$values['id']); 
                                break;
                        }


                        
                       
                    }else{
                        $mast[$keys]['url']=U('News/index?id='.$values['id']);
                    }



                    $mast[$keys]['class_name']=$values['class_name'];

                }

                $data_arr[$key]['list']=$mast;
            }
        }


        



        $this->assign('footer_menu',$data_arr);

    	return $this->display('public/footer');
    }




   





}