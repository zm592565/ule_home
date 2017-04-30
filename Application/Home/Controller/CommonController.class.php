<?php
	
	namespace Home\Controller;
	use Think\Controller;

	class CommonController extends Controller{

		protected function _initialize(){

		      	//从数据库ule_site读取后台配置名称,写入缓存
		      	$sys_all=S('sys_all');
		      	if (empty($sys_all)) {
		      		$m=M('site');
		      		$db=$m->where('id=1')->find();
                    $sys_all = $db;
		      		S('sys_all',$db);
		      	}
		      	define('WEB_SITE', $sys_all['site_name']);/*名称*/
		      	define('WEB_KEYWORD', $sys_all['site_keywords']);
		      	define('WEB_DESCRIPTION', $sys_all['site_description']);

		}	


		/*
		*	给页面动态加载css以及JS文件
		*	注意控件样式与JS的引入路径
		*	lib引用实例 $libfile = array('css' =>array('swiper/swiper-3.4.0.min') ,'js'=>array('swiper
		*	/swiper-3.4.0.jquery.min'));
		*/
		public function staticfile_load($filetype='css',$filenameArr=null){

			if (!empty($filenameArr)) {
				$cssHtml='';
				$jsHtml='';
				$libHtml='';
				$error='<!--nodata-->';
				switch ($filetype) {
				case 'css':
					foreach ($filenameArr as $key => $value) {
					$cssHtml.='<link rel="stylesheet" href="'.HOME_CSS_PATH.$value.'.css" />'.PHP_EOL;
					}
					return $cssHtml;
					break;
				case 'js':
					foreach ($filenameArr as $key => $value) {
					$jsHtml.='<script type="text/javascript" src="'.HOME_JS_PATH.$value.'.js" ></script>'.PHP_EOL;
					}
					return $jsHtml;
					break;
				case 'lib':
					foreach ($filenameArr as $key => $value) {
						if ($key=='css') {
							foreach ($value as $css_value) {
								$libHtml.='<link rel="stylesheet" href="'.HOME_LIB_PATH.$css_value.'.css" />'.PHP_EOL;
							}
							
						}elseif ($key=='js') {
							foreach ($value as $js_value) {
								$libHtml.='<script type="text/javascript" src="'.HOME_LIB_PATH.$js_value.'.js" ></script>'.PHP_EOL;
							}

						}
					}
					return $libHtml;
					break;
				default:
					return $error;
				break;
			}


			}

		}



		/*空操作*/
		public function _empty(){        
		//把所有城市的操作解析到city方法        
			$this->error('非法操作');    
		}


	}

	



?>