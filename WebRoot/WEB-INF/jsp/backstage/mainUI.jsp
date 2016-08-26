<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
  <meta name="apple-mobile-web-app-title" content="布灵格" />
  <%@ include file="/WEB-INF/jsp/common/backstage/taglib_backstage.jsp"%>
  <title>布灵格 | 后台管理</title>

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
	    <div class="am-g">
	      <div class="am-u-sm-12">
	      	<div style="text-align: center; font-size: 5rem;padding-top: 10rem;">
	    		欢迎进入布灵格后台
	    		
	    		
	    		
	    	</div>
	    </div>
	  </div>
	</div>

    <!-- 底部版权信息 -->
	<%@ include file="/WEB-INF/jsp/common/backstage/admin_footer.jsp" %>

  </div>
  <!-- content end -->
</div>

<a href="#" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"></a>

<footer>
  <hr>
  <p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
</footer>


</body>

	<script type="text/javascript">
		// 全选、反全选
		function doSelectAll() {
			// jQuery 1.6 前
			// $("input[name=selectedRow]").attr("checked", $("#selAll").is(":checked"));
			// prop jQuery 1.6+建议使用
			$("input[name=selectedRow]").prop("checked", $("#selAll").is(":checked"));
		}
		// 新增用户
		function doAdd() {
			document.forms[0].action = "${basePath }admin/user_addUI.action";
			document.forms[0].submit();
		}
		// 编辑用户
		function doEdit(id) {
			document.forms[0].action = "${basePath }admin/user_editUI.action?userControl.userId" + id;
			document.forms[0].submit();
		}
		// 删除用户
		function doDelete(id) {
			document.forms[0].action = "${basePath }admin/user_delete.action?qwe" + id;
			document.forms[0].submit();
		}
		// 新增用户
		function doDeleteAll() {
			document.forms[0].action = "${basePath }admin/user_deleteSelected().action";
			document.forms[0].submit();
		}
	
	</script>

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
