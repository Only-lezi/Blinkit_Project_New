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
  <title>布灵格 | 编辑用户</title>

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
			<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">编辑用户</strong> / <small>Form</small></div>
			</div>
			
			<hr>
			      	
			<div class="am-panel">
				<form class="am-form" action="${basePath }admin/user_edit.action" method="post" enctype="multipart/form-data">
					
					<s:hidden name="userControl.userId"></s:hidden>
					
					<div class="am-g am-margin-top">
						<div class="am-u-sm-4 am-u-md-2 am-text-right">账户：</div>
						<div class="am-u-sm-8 am-u-md-4">
							<s:textfield name="userControl.account"/>
						</div>
						<div class="am-hide-sm-only am-u-md-6">*必填，不可重复</div>
					</div>
					
					<div class="am-g am-margin-top">
						<div class="am-u-sm-4 am-u-md-2 am-text-right">头像：</div>
						<div class="am-u-sm-8 am-u-md-4">
							<input type="text" class="am-input-sm" name="headImg"/>
						</div>
						<div class="am-hide-sm-only am-u-md-6">选填</div>
					</div>
					
					<div class="am-g am-margin-top">
						<div class="am-u-sm-4 am-u-md-2 am-text-right">用户名：</div>
						<div class="am-u-sm-8 am-u-md-4 am-u-end col-end" >
							<s:textfield name="userControl.nickName"/>
						</div>
						<div class="am-hide-sm-only am-u-md-6">*必填，不可重复</div>
					</div>
		
					<div class="am-g am-margin-top">
						<div class="am-u-sm-4 am-u-md-2 am-text-right">密码：</div>
						<div class="am-u-sm-8 am-u-md-4">
							<s:textfield name="userControl.passWord"/>
						</div>
						<div class="am-hide-sm-only am-u-md-6">必填</div>
					</div>
					
					<div class="am-g am-margin-top">
						<div class="am-u-sm-4 am-u-md-2 am-text-right">电子邮箱：</div>
						<div class="am-u-sm-8 am-u-md-4">
							<s:textfield name="userControl.userEmail"/>
						</div>
						<div class="am-hide-sm-only am-u-md-6">选填</div>
					</div>
					
					<div class="am-g am-margin-top">
						<div class="am-u-sm-4 am-u-md-2 am-text-right">手机号码：</div>
						<div class="am-u-sm-8 am-u-md-4">
							<s:textfield name="userControl.userPhone"/>
						</div>
						<div class="am-hide-sm-only am-u-md-6">选填</div>
					</div>
					
					<div class="am-g am-margin-top">
						<div class="am-u-sm-4 am-u-md-2 am-text-right">生日：</div>
						<div class="am-u-sm-8 am-u-md-4 am-form-icon">
							<s:textfield type="date" class="am-input-sm" id="birthday" name="userControl.birthday">
								<s:param name="value"><s:date name="userControl.birthday" format="yyyy-MM-dd"/></s:param>
							</s:textfield>
               		 	</div>
						<div class="am-hide-sm-only am-u-md-6">选填</div>
					</div>
					
					<div class="am-g am-margin-top">
						<div class="am-u-sm-4 am-u-md-2 am-text-right">状态：</div>
						<div class="am-u-sm-8 am-u-md-4">
							<s:radio list="#{'1':'有效','0':'无效' }" name="userControl.state" ></s:radio>
						</div>
						<div class="am-hide-sm-only am-u-md-6">选填</div>
					</div>
					
					<div class="am-g am-margin-top">
					<div class="am-u-sm-4 am-u-md-2 am-text-right">自我介绍：</div>
						<div class="am-u-sm-8 am-u-md-4">
							<s:textarea name="userControl.userDesc"  rows="5"></s:textarea>
							<!-- <textarea  style="resize:none; " rows="5" name="userControl.userDesc"></textarea> -->
						</div>
						<div class="am-u-sm-12 am-u-md-6">不填写则自动截取内容前255字符</div>
					</div>
					
					<!-- <div class="am-form-group">
					<label for="user-intro" class="am-u-sm-3 am-form-label">简介 / Intro</label>
					<div class="am-u-sm-9">
					<textarea class="" rows="5" id="user-intro" placeholder="输入个人简介"></textarea>
					<small>250字以内写出你的一生...</small>
					</div>
					</div> -->

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