<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
    pageContext.setAttribute("basePath", request.getContextPath()+"/") ;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link rel="icon" type="image/png" href="${basePath}images/blinkit64.png">
  	<link rel="apple-touch-icon-precomposed" href="${basePath}images/blinkit64.png">
	<script src="${basePath }assets/js/jquery.min.js" type="text/javascript"></script>
	<title>布灵格  | 后台登录</title>
	<style type="text/css">
body {
	background: #ebebeb;
	font-family: "Helvetica Neue", "Hiragino Sans GB", "Microsoft YaHei",
		"\9ED1\4F53", Arial, sans-serif;
	color: #222;
	font-size: 12px;
}

.top_div {
	background: rgba(0, 173, 147, 0.31);
	/* 
	text-align: center;
	width: 100%;
	*/
	height: 350px; 
	line-height: 5;
	font-size:xx-large;
	text-align: center;
	
}

.top_div img {
	margin: 100px auto auto;
	/* margin:6% 43%; */
}

#autologin {
	margin-top: 5px;
	text-align: left;
}

.ipt {
	border: 1px solid #d3d3d3;
	padding: 10px 10px;
	width: 290px;
	border-radius: 4px;
	padding-left: 35px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s
}

.ipt:focus {
	border-color: #66afe9;
	outline: 0;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgba(102, 175, 233, .6);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px
		rgba(102, 175, 233, .6)
}

.u_logo {
	background: url("${basePath }images/backstage/loginUI/username.png")
		no-repeat;
	padding: 10px 10px;
	position: absolute;
	top: 20px;
	left: 40px;
}

.p_logo {
	background: url("${basePath }images/backstage/loginUI/password.png")
		no-repeat;
	padding: 10px 10px;
	position: absolute;
	top: 12px;
	left: 40px;
}

a {
	text-decoration: none;
}

.tou {
	background: url("${basePath }images/backstage/loginUI/tou.png")
		no-repeat;
	width: 97px;
	height: 92px;
	position: absolute;
	top: -87px;
	left: 140px;
}

.left_hand {
	background: url("${basePath }images/backstage/loginUI/left_hand.png")
		no-repeat;
	width: 32px;
	height: 37px;
	position: absolute;
	top: -38px;
	left: 150px;
}

.right_hand {
	background: url("${basePath }images/backstage/loginUI/right_hand.png")
		no-repeat;
	width: 32px;
	height: 37px;
	position: absolute;
	top: -38px;
	right: -64px;
}

.initial_left_hand {
	background: url("${basePath }images/backstage/loginUI/hand.png")
		no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -12px;
	left: 100px;
}

.initial_right_hand {
	background: url("${basePath }images/backstage/loginUI/hand.png")
		no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -12px;
	right: -112px;
}

.left_handing {
	background: url("${basePath }images/backstage/loginUI/left-handing.png")
		no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -24px;
	left: 139px;
}

.right_handinging {
	background:
		url("${basePath }images/backstage/loginUI/right_handing.png")
		no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -21px;
	left: 210px;
}

.admin-login-form {
	background: rgb(255, 255, 255);
	margin: -100px auto auto;
	border: 1px solid rgb(231, 231, 231);
	border-image: none;
	width: 400px;
	/* height: 270px; */
	text-align: center;
}

.admin-login-animal {
	width: 165px;
	height: 96px;
	position: absolute;
}
</style>

</head>
<body>

	<div class="top_div">
		<a href="http://www.blinkit.cn">
			<%-- <img src="${basePath }images/blinkit_logo.png" alt="布灵格后台管理  | blinkit.cn" hight="77px" width="180px"/> --%>
			布灵格后台管理
		</a>
	</div>
	<div class="admin-login-form">
		<div class="admin-login-animal">
			<div class="tou"></div>
			<div class="initial_left_hand" id="left_hand"></div>
			<div class="initial_right_hand" id="right_hand"></div>
		</div>
		<form action="${basePath }admin/login.action" method="post">
			<div style="text-align: center; color: red; font-size: large; padding-top: 10px;">
				<s:property value="loginResult"/>
			</div>		
			<p style="padding: 10px 0px 10px; position: relative;">
				<span class="u_logo"></span> 
				<input class="ipt" type="text" placeholder="请输入管理账号" name="admin.administrator" value="">
			</p>
			<p style="position: relative;">
				<span class="p_logo"></span>
				<input class="ipt" id="password" type="password" placeholder="请输入管理密码"  name="admin.adminPwd" value="">
			</p>
			<p style="position: relative;id=autologin;text-align:left;margin-top:5px;padding-left:30px;font-size:14px;color:gray;">
				<input class="AutoLogin" name="AutoLogin" type=checkbox value="Y" maxLength=4 size=10 id="AutoLogin">&nbsp;5天内自动登录
			</p>
		
			<div style="height: 50px; line-height: 50px; margin-top: 10px; border-top-color: rgb(231, 231, 231); border-top-width: 1px; border-top-style: solid;">
				<p style="margin: 0px 35px 20px 45px;">
					<span style="float: left;"><a style="color: rgb(204, 204, 204);" href="#">忘记密码?</a></span> 
					<span style="float: right;"><a style="color: rgb(204, 204, 204); margin-right: 10px;" href="#">注册</a>
					<input style="background: rgb(0, 142, 173); padding: 7px 10px; border-radius: 4px; border: 1px solid rgb(26, 117, 152); border-image: none; color: rgb(255, 255, 255); font-weight: bold;" type="submit" value="登录"/>
					<!-- <a  href="#"></a></span> -->
				</p>
			</div>
		</form>
	</div>
	<div style="text-align: center;">
		<p>
			<span class="login-buttom-txt">Copyright  © 1994-2016  <a href="http://www.blinkit.cn" target="_blank" title="布灵格首页">布灵格.</a></span>
		</p>
		<p>
			<script type="text/javascript">
				var websiteDate= new Date("4/28/2016");
				var str = "本网站自16年4月28日起已运行:  ";
				var currentDate = new Date();
				var subtractDate = currentDate.getTime() - websiteDate.getTime();
				var runDate = Math.floor(subtractDate / (1000 * 60 * 60 * 24));
				document.write("" + str  + "<a href='#development.jsp' title='布灵格发展历程^_^'>" + runDate + "</a>" + " 天")
			</script>
			&nbsp;&nbsp;
			<script type="text/javascript">
				var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
				document.write(unescape("%3Cspan id='cnzz_stat_icon_1260080944'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/z_stat.php%3Fid%3D1260080944' type='text/javascript'%3E%3C/script%3E"));
			</script>
		</p>
	</div>
</body>
<script type="text/javascript">
	$(function() {
		//得到焦点
		$("#password").focus(function() {
			$("#left_hand").animate({
				left : "150",
				top : " -38"
			}, {
				step : function() {
					if (parseInt($("#left_hand").css("left")) > 140) {
						$("#left_hand").attr("class", "left_hand");
					}
				}
			}, 2000);
			$("#right_hand").animate({
				right : "-64",
				top : "-38px"
			}, {
				step : function() {
					if (parseInt($("#right_hand").css("right")) > -70) {
						$("#right_hand").attr("class", "right_hand");
					}
				}
			}, 2000);
		});
		//失去焦点
		$("#password").blur(function() {
			$("#left_hand").attr("class", "initial_left_hand");
			$("#left_hand").attr("style", "left:100px;top:-12px;");
			$("#right_hand").attr("class", "initial_right_hand");
			$("#right_hand").attr("style", "right:-112px;top:-12px");
		});
	});
</script>
</html>