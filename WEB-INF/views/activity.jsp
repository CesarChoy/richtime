<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
	<title>活动专区</title>
<link rel="stylesheet" type="text/css" href="css/style.css">	
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/all.js"></script>
<script type="text/javascript">
function banner(){	
	var bn_id = 0;
	var bn_id2= 1;
	var speed33=5000;
	var qhjg = 1;
    var MyMar33;
	$("#banner .d1").hide();
	$("#banner .d1").eq(0).fadeIn("slow");
	if($("#banner .d1").length>1)
	{
		$("#banner_id li").eq(0).addClass("nuw");
		function Marquee33(){
			bn_id2 = bn_id+1;
			if(bn_id2>$("#banner .d1").length-1)
			{
				bn_id2 = 0;
			}
			$("#banner .d1").eq(bn_id).css("z-index","2");
			$("#banner .d1").eq(bn_id2).css("z-index","1");
			$("#banner .d1").eq(bn_id2).show();
			$("#banner .d1").eq(bn_id).fadeOut("slow");
			$("#banner_id li").removeClass("nuw");
			$("#banner_id li").eq(bn_id2).addClass("nuw");
			bn_id=bn_id2;
		};
	
		MyMar33=setInterval(Marquee33,speed33);
		
		$("#banner_id li").click(function(){
			var bn_id3 = $("#banner_id li").index(this);
			if(bn_id3!=bn_id&&qhjg==1)
			{
				qhjg = 0;
				$("#banner .d1").eq(bn_id).css("z-index","2");
				$("#banner .d1").eq(bn_id3).css("z-index","1");
				$("#banner .d1").eq(bn_id3).show();
				$("#banner .d1").eq(bn_id).fadeOut("slow",function(){qhjg = 1;});
				$("#banner_id li").removeClass("nuw");
				$("#banner_id li").eq(bn_id3).addClass("nuw");
				bn_id=bn_id3;
			}
		})
		$("#banner_id").hover(
			function(){
				clearInterval(MyMar33);
			}
			,
			function(){
				MyMar33=setInterval(Marquee33,speed33);
			}
		)	
	}
	else
	{
		$("#banner_id").hide();
	}
}
</script>

</head>
<body>
<div class="gy_box">
	<!-- header start -->
	<div id="gy_top_wper">
	 	 <div class="gy_top px1000 clearfix">
	  	    <div class="gy_top_l fl"><img src="images/service_pic.png" alt=""><span style="color:#999999;padding-left:10px;">在线客服:</span><img style="padding-left:10px;" src="images/service_photo.png" alt=""><span style="color: #5DB9E9;padding-left:10px;">客服热线：400-660-8612</span></div>
	  	   	<div class="gy_top_r fr clearfix">
	  	    	<a href="">登录</a><span>|</span>
                <a href="">注册</a><span>|</span>
                <a href="">新手指导</a><span>|</span>
                <a href="">帮助</a>
	  	    </div>
	  </div>
	</div>
	<!-- end top -->
	<div id="gy_nav_wper">
		  <div class="gy_nav px1000 clearfix">
		  	    <div class="gy_nav_l fl"><img src="images/gy_logo.png" alt=""></div>
		  	    <ul class="gy_nav_c fr clearfix">
		  	         <li class="gy_nav_c_ts" style="z-index:1000;">
		  	         	<a href=""> 我要投资</a>     			
					 	<ul class="gycf_perinfo">
					 		<div class="gy_nav_c_cp"><img src="images/gy_down_cpr.png"></div>
					 		<div class="gycf_perinfo_pic">
					 			<img src="images/gy_cp_footer_wper_xiala_bor.png"></div>
					 		<li><a href="">PPP信投</a></li>
					 		<li><a href="">政府（存量）债</a></li>
					 		<li><a href="">新手专享</a></li>
					 		<li><a href="">新手专享</a></li>
					 	</ul>
		  	         </li>	
		  	         <li><a href="">产品特色</a></li>	
		  	         <li><a href="">活动专区</a></li>	
		  	         <li><a href="">业务模式</a></li>	
		  	         <li><a href="">安全保障</a></li>
		  	         <li><a href="">关于我们</a></li>	
		  	    </ul>
		  </div>
	</div>
	<!-- header end -->
	<div id="gy_guide_safety_xzk">
		<div class="px1000">
			<div class="gy_guide_index_xzk_header" style="margin-bottom:20px;">
				<img src="images/gy_guide_index_xzk_picx.png"/>
				<span><a href="">首页</a></span>
				>
				<span><a href="">活动专区</a></span>
			</div>
		</div>
		<div class="px1000 gy_guide_index_xzkgrr_gugao">
			<div class="banner_gg">
				<p style="font-size:35.95px;">新手专享项目</p>
				<p class="banner_gg_hdfont">体验金与新手体验标为PPP在线在公测期与试运营期间采取定向邀请制进行的测试活动，仅为体验投资之用，不对应真实借款项目，旨在完善平台功能，为平台的正式上线打下良好基础。</p>
				<p class="banner_gg_hdbm"><a href="">活动报名</a></p>
			</div>
		</div>
			
			<div class="banner" id="banner" >
				<a href="" class="d1" style="background:url(images/gy_adver_viwepager_activity.png) center no-repeat;"></a>
				<a href="" class="d1" style="background:url(images/gy_adver_viwepager_activity1.png) center no-repeat;"></a>
				<a href="" class="d1" style="background:url(images/gy_adver_viwepager_activity.png) center no-repeat;"></a>
				<a href="" class="d1" style="background:url(images/gy_adver_viwepager_activity1.png) center no-repeat;"></a>
				<div class="d2" id="banner_id">
					<ul>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
				</div>
			</div>
		<script type="text/javascript">banner()</script>
	</div>

	<div id="gy_guide_activety_xzk">
		<div class="px1000">
			<div class="gy_guide_activety_xzk_up">
				<div class="fl gy_guide_activety_img">
					<img src="images/gy_guide_activety_xzk_bg.png">
					<p class="gy_guide_activety_fonts">新手专享&nbsp;&nbsp;省心体验</p>
				</div>
				<div class="fl gy_guide_activety_img">
					<img src="images/gy_guide_activety_xzk_bg.png">
					<p class="gy_guide_activety_fonts">新手专享&nbsp;&nbsp;省心体验</p>
				</div>
				<div class="fl gy_guide_activety_img">
					<img src="images/gy_guide_activety_xzk_bg.png">
					<p class="gy_guide_activety_fonts">新手专享&nbsp;&nbsp;省心体验</p>
				</div>
				<div class="fl gy_guide_activety_img">
					<img src="images/gy_guide_activety_xzk_bg.png">
					<p class="gy_guide_activety_fonts">新手专享&nbsp;&nbsp;省心体验</p>
					<div class="gy_guide_activety_avyy_bg" style="display:none">
						
						<div class="gy_guide_activety_avyy">
							<p style="font-size:22px;color:#29A7E1;">新手专享项目</p>
							<p style="font-size:12px;">体验金与新手体验标为PPP在线在公
								测期与试运营期间采取定向邀请制进
								行的测试活动</p>
							<p>
								<span style="color:#29A7E1">●</span>
								<span>项目年化收益率</span>
								<span style="font-size:25px;color:#FC8F4A">18.20</span>
								<span style="font-size:18px;color:#FC8F4A;">%</span>
							</p>
							<p>
								<span style="color:#29A7E1">●</span>
								<span>项目期限</span>
								<span style="font-size:25px;color:#FC8F4A;">7</span>
								<span style="font-size:18px;color:#FC8F4A;">天</span>
							</p>
							<p style="font-size:12px;">还款方式：到期还本付息</p>
							<div class="gy_guide_activety_avyyr_bg1 fl">
								<div class="gy_treasur_bg2" style="width:50%;">
									
								</div>
							</div>
							<p><span style="color:#FFFFFF;">214,000.00 /</span>  70 万</p>
							<p class="gy_guide_activety_avyyr_btn"><a href="">活动报名</a></p>
						</div>
					</div>
					<div class="gy_guide_activety_avyy_tmdbg" style="display:none"></div>
				</div>
			</div>

			<div class="gy_guide_activety_xzk_down">
				<div class="fl gy_guide_activety_img">
					<img src="images/gy_guide_activety_xzk_bg.png">
					<p class="gy_guide_activety_fonts">新手专享&nbsp;&nbsp;省心体验</p>
				</div>
				<div class="fl gy_guide_activety_img">
					<img src="images/gy_guide_activety_xzk_bg.png">
					<p class="gy_guide_activety_fonts">新手专享&nbsp;&nbsp;省心体验</p>
				</div>
				<div class="fl gy_guide_activety_img">
					<img src="images/gy_guide_activety_xzk_bg.png">
					<p class="gy_guide_activety_fonts">新手专享&nbsp;&nbsp;省心体验</p>
					<div class="gy_guide_activety_avyy_bg" style="display:none">
						<div class="gy_guide_activety_avyy">
							<p style="font-size:22px;color:#29A7E1;">新手专享项目</p>
							<p style="font-size:12px;">体验金与新手体验标为PPP在线在公
								测期与试运营期间采取定向邀请制进
								行的测试活动</p>
							<p>
								<span style="color:#29A7E1">●</span>
								<span>项目年化收益率</span>
								<span style="font-size:25px;color:#FC8F4A">18.20</span>
								<span style="font-size:18px;color:#FC8F4A;">%</span>
							</p>
							<p>
								<span style="color:#29A7E1">●</span>
								<span>项目期限</span>
								<span style="font-size:25px;color:#FC8F4A;">7</span>
								<span style="font-size:18px;color:#FC8F4A;">天</span>
							</p>
							<p style="font-size:12px;">还款方式：到期还本付息</p>
							<div class="gy_guide_activety_avyyr_bg1 fl">
								<div class="gy_treasur_bg2" style="width:50%;">
									
								</div>
							</div>
							<p><span style="color:#FFFFFF;">214,000.00 /</span>  70 万</p>
							<p class="gy_guide_activety_avyyr_btn"><a href="" style="background:#A3A4A4">活动已结束</a></p>
						</div>
					</div>
					<div class="gy_guide_activety_avyy_tmdbg" style="display:none"></div>
				</div>
				<div class="fl gy_guide_activety_img">
					<img src="images/gy_guide_activety_xzk_bg.png">
					<p class="gy_guide_activety_fonts">新手专享&nbsp;&nbsp;省心体验</p>
				</div>
			</div>

		</div>
	</div>


	<!--gy_guide_about_us -->
	<div id="gy_guide_about_us">
		<div class="px1000 clearfix">
			<div class="gy_guide_aus_left fl">
				<div class="gy_guide_aus_block fl">
					<p class="gy_guide_aus_ccp"><b>关于我们</b></p>
					<ul>
						<li><a href="">荣誉奖项</a></li>
						<li><a href="">发展历程</a></li>
						<li><a href="">招贤纳士</a></li>
						<li><a href="">联系我们</a></li>
					</ul>
				</div>
				<div class="gy_guide_aus_block fl">
					<p class="gy_guide_aus_ccp"><b>金融资讯</b></p>
					<ul>
						<li><a href="">金融帮助</a></li>
						<li><a href="">行业资讯</a></li>
					</ul>
				</div>
				<div class="gy_guide_aus_block fl">
					<p class="gy_guide_aus_ccp"><b>业务信息</b></p>
					<ul>
						<li><a href="">我要投资</a></li>
						<li><a href="">我要借款</a></li>
					</ul>
				</div>
				<div class="gy_guide_aus_block fl">
					<p class="gy_guide_aus_ccp"><b>帮助中心</b></p>
					<ul>
						<li><a href="">新手指引</a></li>
						<li><a href="">安全保障</a></li>
						<li><a href="">融资借款</a></li>
						<li><a href="">实时财务</a></li>
					</ul>
				</div>
			</div>
		
			<div class="gy_guide_aus_right fl">
				<div class="fl gy_guide_aus_r_le">
					<div class="gy_guide_aus_r_ewm"><img src="images/gy_guide_aus_right_ewm.png"></div>
					<div style="padding-left:20px;"><img src="images/gy_guide_aus_right_sys.png"></div>
				</div>
				<div class="fl gy_guide_aus_r_re">
					<p class="gy_guide_aus_r_pad" style="font-size:20px"><b>客服热线</b></p>
					<p class="gy_guide_aus_r_pad" style="font-size:24.26px;color:#29a7e1;">400-678-7677</p>
					<p class="gy_guide_aus_r_pad" style="font-size:14px">(周一至周日 08:00 - 22:00)</p>
					<p class="gy_guide_aus_r_pad">
						<span>
							<a href=""><img src="images/gy_guide_aus_right_xlwb.png"></a>
							<a href=""><img src="images/gy_guide_aus_right_wx.png"></a>
							<a href=""><img src="images/gy_guide_aus_right_zxkf.png"></a>
						</span>
					</p>
				</div>
			</div>
		</div>
	</div>

	<!--- footer start -->
	<div id="gy_footer_wper">
		 <div class="gy_footer_xy px1000 clearfix">
		 	  <div class="gy_footer_xy_picp">
		 	  	<img src="images/gy_cp_footer_wper_up01.jpg">
		 	  	<img src="images/gy_cp_footer_wper_up02.png">
		 	  	<img src="images/gy_cp_footer_wper_up03.png">
		 	  	<img src="images/gy_cp_footer_wper_up04.png">
		 	  	<img src="images/gy_cp_footer_wper_up05.png">
		 	  	<img src="images/gy_cp_footer_wper_up06.png">
		 	  </div>
		 	  <div class="gy_footer_xy_fonts">
		 	  		<p>©2014 亘元投资 All rights reserved 亘元投资金融有限公司 辽ICP备11046595号-6</p>
		 	  </div>

		 	  <div class="gy_footer_youqlj">
		 	  	<div class="fl">友情链接:</div>
		 	  	<div class="fl">
				 	  	<ul class="gy_footer_youqlj_one">
				 	  		<li><a href="">证券之星</a></li>
				 	  		<li><a href="">南方财富网</a></li>
				 	  		<li><a href="">蚂蚁财经</a></li>
				 	  		<li><a href="">卡盟网</a></li>
				 	  		<li><a href="" style="color:#5DB0D7">外汇理财</a></li>
				 	  		<li><a href="">股市行情</a></li>
				 	  		<li><a href="">P2P理财</a></li>
				 	  		<li><a href="">白银理财</a></li>
				 	  	</ul><br>
				 	  	<ul id="unfold_show" class="gy_footer_youqlj_two" style="display:none;">
				 	  		<li><a href="">证券之星</a></li>
				 	  		<li><a href="">南方财富网</a></li>
				 	  		<li><a href="">蚂蚁财经</a></li>
				 	  		<li><a href="">卡盟网</a></li>
				 	  		<li><a href="">外汇理财</a></li>
				 	  		<li><a href="">股市行情</a></li>
				 	  		<li><a href="">P2P理财</a></li>
				 	  		<li><a href="">白银理财</a></li>
				 	  	</ul><br>
				 	  	<ul id="unfold_show" class="gy_footer_youqlj_three" style="display:none;">
				 	  		<li><a href="">证券之星</a></li>
				 	  		<li><a href="">南方财富网</a></li>
				 	  		<li><a href="">蚂蚁财经</a></li>
				 	  		<li><a href="">卡盟网</a></li>
				 	  		<li><a href="">外汇理财</a></li>
				 	  		<li><a href="">股市行情</a></li>
				 	  		<li><a href="">P2P理财</a></li>
				 	  		<li><a href="">白银理财</a></li>
				 	  	</ul>
				</div>
		 	  	<div id="unfold" class="fl">
		 	  		<span>展开</span>
		 	  		<span><img src="images/gy_cp_footer_wper_down_zk.png"></span>
		 	  	</div>
			 </div>
			 
		</div>   
	</div>
</div>

</body>
</html>
