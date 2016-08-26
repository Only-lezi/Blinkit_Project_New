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
  <link rel="icon" type="image/png" href="assets/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <%@ include file="/WEB-INF/jsp/common/backstage/taglib_backstage.jsp"%>
  <title>布灵格 | 添加管理员账号</title>

</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
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
			<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">添加管理账户</strong> / <small>Form</small></div>
			</div>
			
			<hr>
			      	
			<div class="am-panel">
				<form class="am-form" action="${basePath }admin/admin/admin_add.action" method="post"><!--  enctype="multipart/form-data" -->
					<div class="am-g am-margin-top">
						<div class="am-u-sm-4 am-u-md-2 am-text-right">管理员账户：</div>
						<div class="am-u-sm-8 am-u-md-4">
							<input type="text" class="am-input-sm" name="admin.administrator"/>
						</div>
						<div class="am-hide-sm-only am-u-md-6">*必填，不可重复</div>
					</div>
					
				<!-- 	<div class="am-g am-margin-top">
						<div class="am-u-sm-4 am-u-md-2 am-text-right">头像：</div>
						<div class="am-u-sm-8 am-u-md-4">
							<input type="text" class="am-input-sm" name="headImg"/>
						</div>
						<div class="am-hide-sm-only am-u-md-6">选填</div>
					</div> -->
					
					<div class="am-g am-margin-top">
						<div class="am-u-sm-4 am-u-md-2 am-text-right">密码：</div>
						<div class="am-u-sm-8 am-u-md-4">
							<input type="text" class="am-input-sm" name="admin.adminPwd"/>
						</div>
						<div class="am-hide-sm-only am-u-md-6">必填</div>
					</div>
					
					<div class="am-g am-margin-top">
						<div class="am-u-sm-4 am-u-md-2 am-text-right">管理员名称：</div>
						<div class="am-u-sm-8 am-u-md-4 am-u-end col-end" >
							<input type="text" class="am-input-sm" name="admin.adminName"/>
						</div>
						<div class="am-hide-sm-only am-u-md-6">*必填，不可重复</div>
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

</html>