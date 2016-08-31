<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
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
	
	<title>布灵格   | 关于我们</title>
</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，布灵格不支持哦。 请 <a href="http://browsehappy.com/" target="_blank">升级您的浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

<!-- 导航栏 -->
<%@ include file="/WEB-INF/jsp/common/front/blinkit_header.jsp" %>

<div class="am-container" id="main">
	<div class="am-g">
		<figure style="text-align: center;">
			<img src="${basePath }images/Only-lezi.jpg" data-rel="${basePath }images/Only-lezi.jpg"  alt="布灵格  | blinkit.cn" width="380" height="380"/>
			<figcaption class="am-figure-capition-btm">
				你聪明有人会说你心机重，你靠的是努力有人会说你运气好，<br/>
				你说自己天生乐观有人会说你虚假，有时候，你明明就是一杯白水，<br/>
				却被人硬生生逼成了满肚子憋屈的碳酸饮料。人一生要遇见太多人，<br/>
				即使有些话字字诛心，也没必要活在他们的眼神里，只要内心澄明，<br/>
				就永远不用讨好一个不懂你的人。<br/>
				爱生活，爱Java。   <br/>
				<br/>
			            再牛逼的<strong>梦想</strong>，也抵不住傻逼似的<strong>坚持！</strong>
				<br/>     
				<strong>  坚持！！！</strong>
			</figcaption>
		</figure>
	</div>
</div>
	
<!-- 版权信息 -->
<%@ include file="/WEB-INF/jsp/common/front/blinkit_footer.jsp" %>

</body>
</html>