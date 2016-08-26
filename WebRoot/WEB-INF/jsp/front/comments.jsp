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
	<meta name="description" content="Only-lezi的个人博客，主要是分享java和HTML相关的知识。
		本站采用java和Amaze UI前端UI框架自主开发而成，网站会不定时更新新的模块和功能。当功能完善后会考虑开源。" />
	<meta name="format-detection" content="telephone=no">
	<meta name="renderer" content="webkit">
	<!-- 引入基本库和js，css文件 -->
	<%@ include file="/WEB-INF/jsp/common/front/taglib_front.jsp"%>
	
	<!-- ueditor富文本编辑器 -->
	<script type="text/javascript" charset="utf-8" src="${basePath}ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${basePath}ueditor/ueditor.all.min.js"> </script>
    <script type="text/javascript" charset="utf-8" src="${basePath}ueditor/lang/zh-cn/zh-cn.js"></script>
	
	<title>布灵格 | 留言板</title>
</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，布灵格不支持哦。 请 <a href="http://browsehappy.com/" target="_blank">升级您的浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

<!-- 导航栏 -->
<%@ include file="/WEB-INF/jsp/common/front/blinkit_header.jsp" %>
	
<div class="am-container " id="main">
	<div class="am-g am-g-fixed">
		<div class="am-u-md-8">
			 <!-- 轻轻地你来了，说句话吧 -->
			 <form action="${basePath }comments/comments_add.action" class="am-form" method="post" id="comments_form">
				<fieldset class="am-form-group">
					<div style="font-size: 2rem; color: white;">
						<span class="am-icon-comments-o am-secondary"></span>留言板：
					</div>
					<br/>
					
					<div id="ueditor" name="comments.leaveMessages" style="height:150px;" class="am-radius am-input-group-secondary"></div>
					<p/>
					<div class="am-input-group am-input-group-secondary">
						<span class="am-input-group-label"><i class="am-icon-user am-icon-fw"></i></span> <!-- 昵称  (必填) -->
						<input type="text" name="comments.nickName" id="nickName" class="am-form-field" placeholder="一定要写你的昵称哦···">
					</div>
					<p/>
						<div class="am-input-group am-input-group-secondary">
							<span class="am-input-group-label"><i class="am-icon-at am-icon-fw"></i></span> <!-- 邮箱  (必填) -->
							<input type="text" name="comments.userEmail" id="userEmail" class="am-form-field" placeholder="邮箱也一定要写哦···">
						</div>
					<p/>
					<div class="am-input-group am-input-group-secondary">
						<span class="am-input-group-label"><i class="am-icon-home am-icon-fw"></i></span> <!-- 你的主页  (选填) -->
						<input type="text" name="comments.personalPage" class="am-form-field" placeholder="可以填写你的网址、微博等等···">
					</div>
					<p><!-- type="submit"  -->
						<input class="am-btn am-btn-primary" onclick="submitForm()" value="提交你的留言">&nbsp;
						<button type="reset" class="am-btn am-btn-default">取消</button>
					</p>
				</fieldset>
			 </form>
			 
			 <!-- 所有的留言 -->
			 <ul class="am-comments-list admin-content-comment">
				<c:forEach items="${commentsList}" var="commentsList">
					<li class="am-comment"> 
					<a href=""><img src="${basePath }images/comments.jpg" alt="" class="am-comment-avatar" width="48" height="48"></a> 
						<div class="am-comment-main">
							<header class="am-comment-hd">
							<div class="am-comment-meta">
								<a href="http://${commentsList.personalPage }" class="am-comment-author" style="color:#3bb4f2;">${commentsList.nickName }</a>
								评论于
								<time datetime="">${commentsList.commentsTime }</time>
							</div>
							</header>
							<div class="am-comment-bd">${commentsList.leaveMessages }</div>					
						</div>
					</li>
				</c:forEach>
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
<script type="text/javascript">
	///////////////// 实例化ueditor富编辑器 //////////////////////////
	window.UEDITOR_HOME_URL = "${basePath}ueditor/";
	var ue = UE.getEditor('ueditor');
	
	// 提交留言
	function submitForm() {
        if (ue.hasContents() == false) {
        	alert("你还没有留言呢，不要点提交~");
			return false;
        }
        var nickName = $("#nickName");
        if (nickName.val() == "" || nickName.val() == null) {
			alert("不填昵称，难道你要匿名吗=_=");
			nickName.focus();
			return false;
		}
		var userEmail = $("#userEmail");
		if (userEmail.val() == "" || userEmail.val() == null) {
			alert("还是写下你的邮箱吧~");
			userEmail.focus();
			return false;
		}
		$("#comments_form").submit();
	}
</script>
</html>