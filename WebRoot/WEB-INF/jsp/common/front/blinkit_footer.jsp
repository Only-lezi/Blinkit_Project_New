<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<footer class="blinkit-footer">
    <div class="blinkit-main" >
        <div class="blinkit-main-left">
            <span><i class="am-icon-heart"></i> 关于布灵格</span>
            <ul>
                <li><a href="http://www.blinkit.cn/home_about.action" title="关于我们"><i class="am-icon-heart-o"></i> 关于我们</a></li>
                <li><a href="#development.jsp">发展历程</a></li>
            </ul>
        </div>

        <div class="blinkit-main-center">
            <span>布灵格</span>
            <dl>
                <dt><img src="${basePath}images/Only-lezi.jpg" alt="布灵格之家"></dt>
                <dd>
                	欢迎来到布灵格，我们专注技术分享。本站主要是分享java和HTML相关的知识。本站采用java和Amaze UI前端UI框架自主开发而成，网站会不定时更新新的模块和功能。当功能完善后会考虑开源。
                    <a href="http://www.blinkit.cn" class="footdon_pg" title="布灵格">
                        <i class="blinkit-main-center-a am-icon-home" > Blinkit</i>
                    </a>
                    <a href="https://github.com/Only-lezi/Blinkit_Project_New/tree/master/Blinkit_Project_New" class="footdon_az animated" target="_blank" title="GitHub">
                        <i class="blinkit-main-center-a am-icon-github " > GitHub</i>
                    </a>
                </dd>
            </dl>
        </div>

        <div class="blinkit-main-right">
            <div class="blinkit-footer-QRcode-weixin">
            	<img src="${basePath}images/weixin_QRcode.png" alt="扫描关注微信">
                <div class="blinkit-footer-QRcode-weixin-gz am-icon-weixin"> 关注微信</div>
            </div>
            <div class="blinkit-footer-QRcode-QQ">
            	<img src="${basePath}images/qq_QRcode.jpg" alt="扫描关注QQ">
                <div class="blinkit-footer-QRcode-QQ-gz am-icon-qq"> 关注QQ</div>
            </div>
        </div>
    </div>
    
    <div class="blinkit-copyright"><!-- © -->
    	Copyright <i class="am-icon-copyright"></i> 1994 - 2016 <a href="http://www.blinkit.cn/home_about.action" title="关于布灵格"><span> 布灵格 .</span></a> All Rights Reserved.&nbsp;&nbsp;&nbsp;
		<a href="http://www.miitbeian.gov.cn" target="_blank" rel="nofollow" style="text-decoration: none;" title="布灵格  备案">豫ICP备16019993号</a>
     </div>
     <div class="blinkit-copyright">
		<i class="am-icon-circle-o-notch am-icon-spin"></i>
		<script type="text/javascript">
			var websiteDate= new Date("4/28/2016");
			var str = "本网站自16年4月起已运行 ";
			var currentDate = new Date();
			var subtractDate = currentDate.getTime() - websiteDate.getTime();
			var runDate = Math.floor(subtractDate / (1000 * 60 * 60 * 24));
			document.write("" + str + " <span>" + runDate + "</span>" + " 天")
		</script>
		&nbsp;&nbsp;
		<script type="text/javascript">
			var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
			document.write(unescape("%3Cspan id='cnzz_stat_icon_1260080944'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/z_stat.php%3Fid%3D1260080944' type='text/javascript'%3E%3C/script%3E"));
		</script>
		&nbsp;&nbsp;
		<a href="http://www.blinkit.cn/sitemap.xml" title="网站地图"><i class="am-icon-map-o"></i> 网站地图</a><!-- compass -->
     </div>
     <div class="blinkit-copyright-yqlj">
    	友情链接：
    		<a href="http://www.liuyunfei.cn/" target="_blank" title="柳云飞的个人博客，主要是分享java和HTML相关的知识" rel="nofollow">LovePanda</a> | 
			<a href="http://blog.csdn.net/" target="_blank" title="CSDN深度IT技术博客。" rel="nofollow">CSDN博客</a> | 
			<a href="http://www.51cto.com/" target="_blank" title="51CTO.COM - 技术成就梦想 - 中国领先的IT技术网站。" rel="nofollow">51CTO</a> | 
			<a href="http://www.ithome.com/" target="_blank" title="IT之家，青岛软媒旗下，国内顶级IT科技门户网站。" rel="nofollow">IT之家</a> | 
			<a href="http://www.corer.me/" target="_blank" title="聚集之美欢迎你，在这里可以让你们发现美的程序员,我们这边聚集了java c# c++ b++等程序员。" rel="nofollow">聚集之美</a>	| 
     		<a href="http://www.jianshu.com/users/ea4015fcb048/latest_articles" target="_blank" title="碰巧会写点程序的摇滚爱好者。" rel="nofollow">BlindingDark</a>
     </div> 
</footer>

<!-- 右边回顶部栏-开始 -->
<style type="text/css">
.side-tool {
	position: fixed;
	width: 54px;
	height: 350px;
	right: 0;
	top: 35%;
}

.side-tool ul li {
	width: 54px;
	height: 54px;
	float: right;
	position: relative;
	/* border-bottom: 1px solid #444; */
}

.side-tool ul li .sidebox {
	position: absolute;
	width: 54px;
	height: 54px;
	top: 0;
	right: 0;
	transition: all 0.3s;
	/* background: #000; */
	opacity: 0.8;
	filter: Alpha(opacity = 80);
	color: #fff;
	font: 14px/54px "微软雅黑";
	overflow: hidden;
}

.side-tool ul li .sidetop {
	width: 54px;
	height: 54px;
	line-height: 54px;
	display: inline-block;
	/* background: #000; */
	opacity: 0.8;
	filter: Alpha(opacity = 80);
	transition: all 0.3s;
}

.side-tool ul li .sidetop:hover {
	/* background: #ae1c1c; */
	opacity: 1;
	filter: Alpha(opacity = 100);
}

/* .side-tool ul li img {
	float: left;
} */
</style>
<script type="text/javascript">
	/* 常见问题和QQ栏的内容 */
	/* $(document).ready(function(){
		$(".side-tool ul li").hover(function(){
			$(this).find(".sidebox").stop().animate({"width":"124px"},200).css({"opacity":"1","filter":"Alpha(opacity=100)","background":"#e94c4c"})	
		},function(){
			$(this).find(".sidebox").stop().animate({"width":"54px"},200).css({"opacity":"0.8","filter":"Alpha(opacity=80)","background":"#000"})	
		});
		
	}); */
	function goTop(){
		$('html,body').animate({'scrollTop':0},600);
	}
	function goBottom(){
		$('html,body').animate({'scrollTop':$(document).height()},600);
	}
</script>
<div class="side-tool">
	<ul style="list-style-type: none;">
		<!-- <li>
			<a href="#${base}/index/advice">
				<div class="sidebox"><span class="am-icon-faq am-icon-btn am-icon-question-circle am-secondary"></span></div>
			</a>
		</li>
		<li>
			<a href="tencent://message/?uin=575554950&Site=在线QQ&amp;Menu=yes" >
				<div class="sidebox"><span class="am-icon-qq am-icon-btn am-secondary"></span></div>
			</a>
		</li> -->
		<li style="border:none;">
			<a href="javascript:goTop();" class="sidetop">
				<span class="am-icon-arrow-up am-icon-btn am-secondary"></span>
			</a>
		</li>
		<li style="border:none;">
			<a href="javascript:goBottom();" class="sidetop">
				<span class="am-icon-arrow-down am-icon-btn am-secondary"></span>
			</a>
		</li>
	</ul>
</div>
<!-- 右边回顶部栏-结束 -->