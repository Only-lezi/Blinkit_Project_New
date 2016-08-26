<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
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
	
	<!-- 引入基本库和js，css文件 -->
	<%@ include file="/WEB-INF/jsp/common/front/taglib_front.jsp"%>
	<title>布灵格  | 用户登录</title>
</head>
<body>
<!-- 导航栏 -->
<%@ include file="/WEB-INF/jsp/common/front/blinkit_header.jsp" %>

<div class="am-container " id="main">
	<div class="am-g am-g-fixed">
		<div class="am-u-md-8">
			<!-- LOGO -->
			<div class="am-u-sm-12 am-text-center" >
				 <i class="am-icon-optin-monster myapp-login-logo"></i><!-- am-icon-twitch -->
			</div>
			<div class="am-u-sm-12 am-u-md-12 am-text-center">
				<font style="text-align: center; color: red; font-size: large;" id="errMsg"><s:property value="loginResult"/></font>
			</div>
			<!-- 登陆框 -->
			<div class="am-u-sm-11 am-u-sm-centered">
			<form id="loginForm" action="${basePath }home_login.action" method="post" class="am-form">
				<fieldset class="myapp-login-form am-form-set">
					<div class="am-form-group am-form-icon">
						<i class="am-icon-user"></i>
						<s:textfield id="account" name="userControl.account" class="myapp-login-input-text am-form-field" placeholder="请输入您的账号"/>
					</div>
					<div class="am-form-group am-form-icon">
						<i class="am-icon-lock"></i>
						<s:password id="passWord" name="userControl.passWord" class="myapp-login-input-text am-form-field" placeholder="至少6个字符"/>
					</div>
					<div class="am-form-inline">
						<div class="am-form-group am-form-icon">
							<i class="am-icon-image"></i>
							<s:textfield id="verifyCode" name="vCode" class="myapp-login-input-text am-form-field" placeholder="请输入验证码"/>
						</div>
						<div class="am-form-group" style="padding-left: 2rem;">
							<img id="vc" alt="验证码" src="${basePath}home_changeCode.action" style="border:1px solid #3bb4f2;" onclick="this.src='${basePath}home_changeCode.action?'+new Date().getTime();">&nbsp;&nbsp;&nbsp;
							<a href="javascript:changeVerifyCode()">看不清，换一张！</a>
						</div>
					</div>
				</fieldset>
				<input type="button" id="btnLogin"  class="myapp-login-form-submit am-btn am-btn-block" value="登 录"></input>
				<a href="${basePath }home_registerUI.action" class="myapp-login-form-register am-btn am-btn-block">如果没有账号？ ·点我· 注册~</a>
			</form>
			</div>
			<!-- <div class="am-text-center am-u-sm-11 am-u-sm-centered myapp-login-form-shortcut">
				<hr class="myapp-login-form-hr" />
				<span class="myapp-login-form-hr-font">第三方登陆</span>
			</div> -->
		
			<!-- <div class="am-u-sm-12 am-text-center myapp-login-form-listico" >
				 <div class="am-u-sm-4 am-text-center" >
				 <i class="am-icon-btn am-primary am-icon-qq"></i>
				 </div>
				 <div class="am-u-sm-4 am-text-center" >
				 <i class="am-icon-btn am-danger am-icon-weibo"></i>
				 </div>
				 <div class="am-u-sm-4 am-text-center" >
				 <i class="am-icon-btn am-success am-icon-weixin"></i>
				 </div>
			</div> -->
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
	function changeVerifyCode() {
		var img = document.getElementById("vc");
		img.src = "${basePath}home_changeCode.action?" + new Date().getTime();
	}
	
	/* 验证账号 */
	var $verifyCode = $("#verifyCode");
	$verifyCode.blur(function(){
		var strCode = $verifyCode.val();
	        if(strCode == ""){
	            $("#errMsg").html("<font style='text-align: center; color: red; font-size: large;' id='errMsg'>验证码不能为空</font>");
	            return false;
       		} else {
       			$.ajax({
	        		url : "${basePath}home_verifyCode.action",
	        		type : "post",
	        		data : {"vCode" : strCode},	// 传输的数据
	        		async : true,	// 异步传输
	        		success : function(result) {
	        			if ("failure" != result) {
	        				$("#errMsg").html("<font style='text-align: center; color: red; font-size: large;' id='errMsg'>验证码输入错误</font>");
	            			return false; 
	        			} else {
	        				$("#errMsg").html("<font style='text-align: center; color: green; font-size: large;' id='errMsg'>验证码正确</font>");
	        			}
	        		}
	        		
	        	})
       		}
	});
	
	/*注册按钮事件*/
    $("#btnLogin").click(function() {
    	var $account = $("#account").val();
    	var $passWord = $("#passWord").val();
    	if ($account.length > 0 && $passWord.length > 0 && $verifyCode.length > 0) {
    		$("#loginForm").submit();
    	}
    });
</script>
</html>