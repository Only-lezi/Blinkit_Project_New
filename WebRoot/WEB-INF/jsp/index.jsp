<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<meta name="author" content="Only-lezi" />
	<meta name="keywords" content="blinkit.cn,布灵格,java博客,amazeui博客,IT,技术,移动开发,Web前端,企业架构,编程语言,互联网,数据库,技术博客,blog" />
	<meta name="description" content="布灵格，Only-lezi的个人博客，主要是分享java和HTML相关的知识。
		本站采用java和Amaze UI前端UI框架自主开发而成，网站会不定时更新新的模块和功能。当功能完善后会考虑开源。" />
	<meta name="format-detection" content="telephone=no">
	<meta name="renderer" content="webkit">
	<%@ include file="/WEB-INF/jsp/common/front/taglib_front.jsp"%>
	<title>布灵格 | www.blinkit.cn</title>
	
</head>
<body>

<!-- 导航栏 -->
<%@ include file="/WEB-INF/jsp/common/front/blinkit_header.jsp" %>

<div class="am-container" id="main">
	<div class="am-g am-g-fixed">
		<div class="am-u-md-8">
				
		  <div data-am-widget="slider" class="am-slider am-slider-default" data-am-slider='{}' >
			  <ul class="am-slides">
			      <li>
			        <img src="${basePath }images/banner/bg1.jpg" alt="布灵格  | blinkit.cn">
			      </li>
			      <li>
			      	<img src="${basePath }images/banner/banner1.jpg" alt="布灵格  | blinkit.cn">
			      </li>
			      <li>
			        <img src="${basePath }images/banner/banner2.jpg" alt="布灵格  | blinkit.cn">
			      </li>
			      <li>
			        <img src="${basePath }images/banner/banner3.jpg" alt="布灵格  | blinkit.cn">
			      </li>
			      <li>
			        <img src="${basePath }images/banner/banner4.jpg" alt="布灵格  | blinkit.cn">
			      </li>
			   </ul>
			</div>
			
			<ul class="am-pagination">
				<li class="am-pagination-prev"><a href="#">&laquo; 上一页</a></li>
				<li class="am-pagination-next"><a href="#">下一页 &raquo;</a></li>
			</ul>
		</div>
		
		<!-- 右侧边栏信息 -->
		<div class="am-u-md-4">
			<div class="am-panel-group" id="my-side">
				<%@ include file="/WEB-INF/jsp/common/front/right_side.jsp"%>
			</div>
		</div>

	</div>
</div>
	
<!-- 版权信息 -->
<%@ include file="/WEB-INF/jsp/common/front/blinkit_footer.jsp" %>
	

</body>
	<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

	<!--[if (gte IE 9)|!(IE)]><!-->
	<script src="${basePath }assets/js/jquery.min.js"></script>
	<!--<![endif]-->
	<script src="${basePath }assets/js/amazeui.min.js"></script>
</html>
