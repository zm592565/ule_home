/*悠乐帮js文件*/

$(function(){


	/*问题tab切换效果*/
	$('.left_help ul.nav_top li').on('click',function(){

		$(this).addClass('active').siblings().removeClass('active');

		$('.left_help .ule_box_left').eq($(this).index()).addClass('ule_box_left_active').siblings().removeClass('ule_box_left_active');

	})


	/*发布提问弹窗*/
	$('#send_help,#send_box').bind('click',function(){

		/*点击之后判断是否登录，登录就弹出发布*/
		if (loginIS) {

			layui.use(['layer'], function(){
			  var layer = layui.layer;
			  
			  	layer.open({
				  type: 2,
				  title: '发布求助问题',
				  closeBtn: true, //不显示关闭按钮
				  shade: [0.8],
				  area: ['600px', '480px'],
				  //offset: 'rb', //右下角弹出
				  //time: 2000, //2秒后自动关闭
				  anim: 2,
				  content: [addUrl, 'no'], //iframe的url，no代表不显示滚动条
				});


			});


			

		}else{

			/*未登录状态，返回到登录页面*/
			location.href=loginUrl;

		}
		
	})



})



/*加载热门求助*/
function addAjaxLoad(obj){

	var TabIndex=$(obj).index();
	$.ajax({
		type:"POST",
		url:hotHelp,
		success:function(msg){
			// console.log(msg.data);
			switch(msg.code){
				case 200:

				layui.use(['laypage', 'layer'], function(){
				  var laypage = layui.laypage
				  ,layer = layui.layer;
				  data=msg.data;

				var nums = 20; //每页出现的数据量
				var pages = Math.ceil(data.count/nums); //得到总页数



				//模拟渲染
				  var render = function(curr){
				    //此处只是演示，实际场景通常是返回已经当前页已经分组好的数据
				    var str = '', last = curr*nums - 1;
				    last = last >= data.count ? (data.count-1) : last;

				    for(var i = (curr*nums - nums); i <= last; i++){
				    	console.log(msg.data[i]['id'])
				      str +="<li>"+data[i]['id']+"</li>";

				    }
				    return str;
				  };

				  laypage({
				    cont: $('.left_help .ule_box_left').eq(TabIndex).find('.page')
				    ,pages: pages //得到总页数
				    ,jump: function(obj){
				    	$('.left_help .ule_box_left').eq(TabIndex).html(render(obj.curr));
				    }
				  });


				});


				break;
				case 400:
				alert(msg.msg)
				break;
				

			}

		}
	});

}