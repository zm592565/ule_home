/*
 * 项目名称：悠乐1.0.1版本
 * 文件介绍：首页JS效果文件
 * 开发人员：344822559@qq.com
 * 开发时间：2016-12-24
 * */

$(function(){

	// 顶部导航固定漂浮
	$('#header').navFixed();
	$(window).scroll(function (){
   		var offsetTop = $(window).scrollTop();
   		if(offsetTop>135){
   		 	$('#header').css('box-shadow','0px 1px 2px #d2d2d2');
   		}else{
   		 	$('#header').css('box-shadow','none');
   		}
	})

	/*热门地接线路*/
	$('.new_line').eq(0).find('ul li').on('click',function(){
		
		/*当前点击li标签的索引*/
		var Li_Index=$(this).index();
		
		/*添加顶部选中样式*/
		$(this).addClass('active').siblings().removeClass('active');
		
		$('.new_line').eq(0).find('.top_box').eq(Li_Index).addClass('top_box_active').siblings().removeClass('top_box_active');
		
		/*底部添加选中样式*/
		var b=$('.new_line').eq(0).children('.chose_line').find('li').eq(Li_Index).addClass('active').siblings().removeClass('active');
	
	})
	
	
	
	
})