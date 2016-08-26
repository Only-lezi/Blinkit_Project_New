<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	<title>布灵格  | 用户注册</title>
</head>
<body>
<!-- 导航栏 -->
<%@ include file="/WEB-INF/jsp/common/front/blinkit_header.jsp" %>

<div class="am-container " id="main">
	<div class="am-g am-g-fixed">
		<div class="am-u-md-8">
		    <form class="am-form am-form-horizontal">
				<div class="am-u-sm-12 am-u-md-12 am-text-center" style="font-size: 2rem; color: white;">
					<span class="am-icon-registered "></span>用户注册
				</div>
				<br/>
				<br/>
		    
				<div class="am-form-group">
				  <label for="account" class="am-u-sm-3 am-form-label">账户(号)：</label>
				  <div class="am-u-sm-9">
				  	<s:textfield id="account" name="userControl.account"/>
				    <span id="accountMsg"><small>请输入5-15位字符或数字，用于您的登录</small></span>
				    <div ></div>
				  </div>
				</div>
		
				<div class="am-form-group">
				  <label for="passWord1" class="am-u-sm-3 am-form-label">密码：</label>
				  <div class="am-u-sm-9">
				  	<s:textfield id="passWord1" name="userControl.passWord"/>
				    <span id="passWord1Msg"><small>请输入5-15位的密码</small></span>
				  </div>
				</div>
		
				<div class="am-form-group">
				  <label for="passWord2" class="am-u-sm-3 am-form-label">确认密码：</label>
				  <div class="am-u-sm-9">
				  	<s:password id="passWord2"/><!--  name="userControl.nickName" -->
				    <span id="passWord2Msg"><small>请确认您输入的密码</small></span>
				  </div>
				</div>
		          
				<div class="am-form-group">
				  <label for="nickName" class="am-u-sm-3 am-form-label">用户名：</label>
				  <div class="am-u-sm-9">
				  	<s:textfield id="nickName" name="userControl.nickName"/>
				    <span id="nickNameMsg"><small>请输入您的用户名，让我们记住你~</small></span>
				  </div>
				</div>
							          
				<div class="am-form-group">
				  <label for="headImg" class="am-u-sm-3 am-form-label">头像：</label>
				  <div class="am-u-sm-9">
				    <input type="file" id="headImg" name="userControl.headImg"/>
				    <!-- <span id="headImgMsg"><small>请上传您的头像~</small></span> -->
				  </div>
				</div>
				
				<div class="am-form-group">
				  <label for="userEmail" class="am-u-sm-3 am-form-label">电子邮箱：</label>
				  <div class="am-u-sm-9">
				  	<s:textfield id="userEmail" name="userControl.userEmail"/>
				    <span id="userEmailMsg"><small>请输入您的电子邮箱</small></span>
				  </div>
				</div>
				
				<div class="am-form-group">
				  <label for="userPhone" class="am-u-sm-3 am-form-label">手机号码：</label>
				  <div class="am-u-sm-9">
				    <s:textfield id="userPhone" name="userControl.userPhone"/>
				    <span id="userPhoneMsg"><small>请输入您的手机号码</small></span>
				  </div>
				</div>
				
				<div class="am-form-group">
				  <label for="birthday" class="am-u-sm-3 am-form-label">出生日期：</label>
				  <div class="am-u-sm-9">
				    <s:textfield type="date" id="birthday" class="am-input-sm" name="userControl.birthday">
						<s:param name="value"><s:date name="userControl.birthday" format="yyyy-MM-dd"/></s:param>
					</s:textfield>
				    <span id="birthdayMsg"><small>请选择你的出生日期</small></span>
				  </div>
				</div>
		          
				<div class="am-form-group">
				  <label for="userDesc" class="am-u-sm-3 am-form-label">自我介绍：</label>
				  <div class="am-u-sm-9">
				  	<s:textarea name="userControl.userDesc" rows="3" placeholder="编辑自我介绍，让更多人了解你。"/>
				    <!-- <span id="userPhoneMsg"><small>请上传您的头像~</small></span> -->
				  </div>
				</div>
				
				<div class="am-form-group">
				  <div class="am-u-sm-9 am-u-sm-push-3">
				  	<input type="button" id="btnRegister" value="注册账号" class="myapp-login-form-submit am-btn am-btn-block" />
				  </div>
				</div>
				<div class="am-form-group">
				  <div class="am-u-sm-9 am-u-sm-push-3">
				  	<p>
				  		<a href="${basePath }home_loginUI.action" class="myapp-login-form-register am-btn am-btn-block">已有账号？请登录。</a>
				  	</p>
				  </div>
				</div>
		    </form>
		</div>
	    <div class="am-u-md-4" id="my-side">
	    	<%@ include file="/WEB-INF/jsp/common/front/right_side.jsp"%>
	    </div>
	</div>
</div>
	
<!-- 注册失败提示 -->
<div class="am-modal am-modal-alert" tabindex="-1" id="my-alert">
	<div class="am-modal-dialog">
		<div class="am-modal-hd">系统提示</div>
		<div class="am-modal-bd">
			对不起，注册失败，请重新填写！
		</div>
		<a href="${basePath }home_registerUI.action">
			<div class="am-modal-footer">
			  <span class="am-modal-btn">确定</span>
			</div>
		</a>
	</div>
</div>
	
<!-- 版权信息 -->
<%@ include file="/WEB-INF/jsp/common/front/blinkit_footer.jsp" %>

</body>
<script type="text/javascript">
	/* 验证账号 */
	var $account = $("#account");
	/* $account.focus(); */
	$account.blur(function(){
		var strAccount = $account.val();
	        var reg = /^\w{5,15}$/;
	        if(strAccount == ""){
	            $("#accountMsg").html("<small><font color='red'>账户不能为空</font></small>");
	            $account.focus();
	            return false;
	        } else if(reg.test(strAccount) == false){
	           $("#accountMsg").html("<small><font color='red'>账户格式不正确</font></small>");
	           $pwd.focus();
	           return false;
       		} else {
       			$.ajax({
	        		url : "${basePath}home_verifyAccount.action",
	        		type : "post",
	        		data : {"userControl.account" : strAccount},	// 传输的数据
	        		async : true,	// 异步传输
	        		success : function(result) {
	        			if ("true" != result) {
	        				$("#accountMsg").html("<small><font color='red'>账号已存在</font></small>");
	        				$account.focus();
	            			return false;
	        			} else {
	        				$("#accountMsg").html("<small><font color='green'>账号可用</font></small>");
	        			}
	        		}
	        		
	        	})
       		}
       		
	});
	
	/* 验证密码 */
	var $pwd = $("#passWord1");
	var $repwd = $("#passWord2");
	$pwd.blur(function(){
	       var strPwd = $pwd.val();
	       var reg = /^[a-zA-Z0-9]{5,15}$/;
	       if(strPwd == ""){
	           $("#passWord1Msg").html("<small><font color='red'>密码不能为空</font></small>");
	           $pwd.focus();
	           return false;
	       }
	
	       if(reg.test(strPwd) == false){
	           $("#passWord1Msg").html("<small><font color='red'>密码格式不正确</font></small>");
	           $pwd.focus();
	           return false;
	       }
	
	       $("#passWord1Msg").html("<small><font color='green'>密码格式正确</font></small>");
	});

	/* 验证再次输入密码 */
	$repwd.blur(function(){
			var strPwd1 = $pwd.val();
	      var strPwd2 = $repwd.val();
	      if(strPwd1 != strPwd2){
	          $("#passWord2Msg").html("<small><font color='red'>两次密码输入不一致</font></small>");
	          $repwd.focus();
	         	return false;
	      }
	      if (strPwd1 == "") {
	      	$("#passWord2Msg").html("<small><font color='red'>没有输入密码，请输入密码</font></small>");
	          $repwd.focus();
	         	return false;
	      }
	      $("#passWord2Msg").html("<small><font color='green'>两次密码一致，请牢记您的密码</font></small>");
	});
	    
	 /* 验证昵称 */ 
	 var $nickname = $("#nickName");
     $nickname.blur(function(){
    	var strRealName = $nickname.val();
    	if (strRealName == "") {
    		 $("#nickNameMsg").html("<small><font color='red'>昵称不能为空</font></small>");
    		 $nickname.focus();
            return false;
    	} else {
			$.ajax({
				url : "${basePath}home_verifyNickName.action",
				type : "post",
				data : {"userControl.nickName":strRealName},	// 传输的数据
				async : true, 					// 请求是否异步，默认为异步
				success : function(result){
					if("true" != result){
						$("#nickNameMsg").html("<small><font color='red'>该昵称已存在</font></small>");
						$nickname.focus();
            			return false;
					}else{
						$("#nickNameMsg").html("<small><font color='green'>该昵称可用</font></small>");
					}
				}
			})
    		 
    	}
	})
	    
    /* 验证电子邮箱 */
    var $email = $("#userEmail");
    $email.blur(function(){
        var strEmail = $email.val();
        var reg = /^\w+@[a-zA-Z0-9]+.(com|com.cn)$/;
        if (strEmail == "") {
    		$("#userEmailMsg").html("<small><font color='red'>电子邮箱不能为空</font></small>");
    		$email.focus();
            return false;
    	} 
        if(reg.test(strEmail) == false){
            $("#userEmailMsg").html("<small><font color='red'>电子邮箱格式不正确</font></small>");
            $email.focus();
            return false;
        }
        $("#userEmailMsg").html("<small><font color='green'>电子邮箱格式正确</font></small>");

    })

    /* 验证电话号码 */
    var $phone = $("#userPhone");
    $phone.blur(function(){
        var strPhone = $phone.val();
        var reg = /^1((3|5|8){1}\d{1}|70|71|72|73|75|76|77|78)\d{8}$/;
        if (strPhone == "") {
    		$("#userPhoneMsg").html("<small><font color='red'>手机号码不能为空</font></small>");
    		$phone.focus();
            return false;
    	} 
        if(reg.test(strPhone)==false){
            $("#userPhoneMsg").html("<small><font color='red'>手机号码格式不正确</font></small>");
            $phone.focus();
            return false;
        }
        $("#userPhoneMsg").html("<small><font color='green'>手机号码格式正确</font></small>");
    });
	    
    /*注册按钮事件*/
    $("#btnRegister").click(function(){
		if($account.val().length > 0 && $pwd.val().length > 0 && $repwd.val().length > 0 && $nickname.val().length>0 && $email.val().length >0 && $phone.val().length >0){ 
			$.ajax({
				url : "${basePath}home_register.action",
				type : "post", 
				data : $("form").serialize(),	// 传输的数据
				async : true, 					// 请求是否异步，默认为异步
				/* dataType : "html", */
				success : function(result){
					if("true" == result){
					    window.location.href="${basePath}home_loginUI.action";
					}else{
						/*注册按钮事件*/
						$('#my-alert').modal();
						/* alert("对不起，注册失败，请重新填写.");	 */						
					}
				}
			});
		} 
    });
</script>
</html>