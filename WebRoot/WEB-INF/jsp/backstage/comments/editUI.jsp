<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="#">
	<meta name="keywords" content="table">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="renderer" content="webkit">
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<meta name="apple-mobile-web-app-title" content="Amaze UI" />
	<%@ include file="/WEB-INF/jsp/common/backstage/taglib_backstage.jsp"%>
  
	<!-- ueditor富文本编辑器 -->
	<script type="text/javascript" charset="utf-8" src="${basePath}ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="${basePath}ueditor/ueditor.all.min.js"> </script>
	<script type="text/javascript" charset="utf-8" src="${basePath}ueditor/lang/zh-cn/zh-cn.js"></script>
 
  <title>布灵格 | 修改留言</title>

</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，布灵格 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->
	
<!-- 导航栏 -->
<%@ include file="/WEB-INF/jsp/common/backstage/admin_header.jsp" %>
	

<div class="am-cf admin-main">
	<!-- 左边侧边栏 -->
	<%@ include file="/WEB-INF/jsp/common/backstage/left_side.jsp" %>
	
	<!-- content start -->
	<div class="admin-content">
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
			<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">编辑留言</strong> / <small>Form</small></div>
			</div>
			<hr>
			<div class="am-panel">
				<form class="am-form" action="${basePath }admin/comments/comments_edit.action" method="post" enctype="multipart/form-data">
					
					<s:hidden name="comments.commentsId"></s:hidden>
					
					<div class="am-g am-margin-top">
						<div class="am-u-sm-4 am-u-md-2 am-text-right">昵称：</div>
						<div class="am-u-sm-8 am-u-md-4">
							<s:textfield name="comments.nickName"/>
						</div>
						<div class="am-hide-sm-only am-u-md-6">*必填，不可重复</div>
					</div>
					
					<div class="am-g am-margin-top">
						<div class="am-u-sm-4 am-u-md-2 am-text-right">留言时间：</div>
						<div class="am-u-sm-8 am-u-md-4">
							<s:textfield type="date" class="am-input-sm" id="birthday" name="comments.commentsTime" readonly="true">
								<s:param name="value"><s:date name="comments.commentsTime" format="yyyy-MM-dd HH:mm:ss"/></s:param>
							</s:textfield>
							<%-- <s:textfield name="comments.commentsTime" disabled="disabled"/> --%>
						</div>
						<div class="am-hide-sm-only am-u-md-6">必填</div>
					</div>
					
					<div class="am-g am-margin-top">
						<div class="am-u-sm-4 am-u-md-2 am-text-right">电子邮箱：</div>
						<div class="am-u-sm-8 am-u-md-4 am-u-end col-end" >
							<s:textfield name="comments.userEmail"/>
						</div>
						<div class="am-hide-sm-only am-u-md-6">*必填，不可重复</div>
					</div>
					
					<div class="am-g am-margin-top">
						<div class="am-u-sm-4 am-u-md-2 am-text-right">个人主页：</div>
						<div class="am-u-sm-8 am-u-md-4 am-u-end col-end" >
							<s:textfield name="comments.personalPage"/>
						</div>
						<div class="am-hide-sm-only am-u-md-6">*必填，不可重复</div>
					</div>
					
					<div class="am-g am-margin-top">
						<div class="am-u-sm-4 am-u-md-2 am-text-right">留言内容：</div>
						<div class="am-u-sm-8 am-u-md-8 am-u-end col-end" >
							<s:textarea id="ueditor" name="comments.leaveMessages" cssStyle="height:500px;" class="am-radius am-input-group-secondary"/>
							<%-- <div id="ueditor" name="comments.leaveMessages" style="height:500px;" ><s:textfield name="comments.leaveMessages"/></div>	 --%>				
						</div>
						<!-- <div class="am-hide-sm-only am-u-md-6">*必填，不可重复</div> -->
					</div>
					
					
					
					<br/>
					<div class="am-u-md-8 am-u-md-centered">
						<button type="submit" class="am-btn am-btn-primary">提交保存</button>&nbsp;
						<input type="reset" class="am-btn am-btn-warning" value="重置 | 重新填写"/>
					</div>
				</form>
        	</div>	
        	
			<!-- 底部版权信息 -->
			<%@ include file="/WEB-INF/jsp/common/backstage/admin_footer.jsp" %>
		</div>
	</div>
<!-- content end -->
</div>

<a href="#" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"></a>


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
<script src="${basePath }assets/js/app.js"></script>

	<script type="text/javascript">
		// 实例化ueditor富编辑器
		window.UEDITOR_HOME_URL = "${basePath}ueditor/";
		var ue = UE.getEditor('ueditor');
	</script>
</html>