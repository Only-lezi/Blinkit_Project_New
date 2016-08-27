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
  <title>布灵格 | 添加友情链接 </title>

</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，布灵格    暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
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
			<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">添加友情链接 </strong> / <small>Form</small></div>
			</div>
			<hr>
			      	
			<div class="am-panel">
				<form class="am-form" action="${basePath }admin/link/add.action" method="post" enctype="multipart/form-data">
					<div class="am-g am-margin-top">
						<div class="am-u-sm-4 am-u-md-2 am-text-right">网站名称：</div>
						<div class="am-u-sm-8 am-u-md-4">
							<input type="text" class="am-input-sm" name="friendlyLink.linkName"/>
						</div>
						<div class="am-hide-sm-only am-u-md-6">*必填，不可重复</div>
					</div>
					
					<!-- <div class="am-g am-margin-top">
						<div class="am-u-sm-4 am-u-md-2 am-text-right">链接图标：</div>
						<div class="am-u-sm-8 am-u-md-4">
							<input type="text" class="am-input-sm" name="headImg"/>
						</div>
						<div class="am-hide-sm-only am-u-md-6">选填</div>
					</div> -->
					
					<div class="am-g am-margin-top">
						<div class="am-u-sm-4 am-u-md-2 am-text-right">网站链接：</div>
						<div class="am-u-sm-8 am-u-md-4 am-u-end col-end" >
							<input type="text" class="am-input-sm" name="friendlyLink.linkURL"/>
						</div>
						<div class="am-hide-sm-only am-u-md-6">*必填，不可重复</div>
					</div>
		
					<div class="am-g am-margin-top">
						<div class="am-u-sm-4 am-u-md-2 am-text-right">网站介绍：</div>
						<div class="am-u-sm-8 am-u-md-4">
							<s:textarea name="friendlyLink.linkTitle" cssStyle="resize:none;" class="am-input-sm" rows="5"></s:textarea>
						</div>
						<div class="am-hide-sm-only am-u-md-6">选填</div>
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
</html>