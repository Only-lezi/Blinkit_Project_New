<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
    pageContext.setAttribute("basePath", request.getContextPath()+"/");
%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<meta name="author" content="Only-lezi"/>
	<meta name="keywords" content="blinkit.cn,布灵格,java博客,amazeui博客,IT,技术,移动开发,Web前端,企业架构,编程语言,互联网,数据库,技术博客,blog" />
	<meta name="description" content="布灵格，您的操作出错了，还是返回首页吧" />
	<meta name="format-detection" content="telephone=no">
	<meta name="renderer" content="webkit">
	
	<title>布灵格  | 系统异常信息</title>
</head>
<body>

<div class="am-container" style="text-align: center;">
	<br/>
  	<img src="${basePath }images/common/error.jpg" alt="sorry，出现错误了" style="width: 200px;height: 200px;"/>
    <br/>
    <br/>
    <s:if test="exception.errorMsg != '' && exception.errorMsg != null">
    	<s:property value="exception.errorMsg"/>
    </s:if>
    <s:else>
    	操作失败！<s:property value="exception.message"/>
    </s:else>
    <a href="http://www.blinkit.cn" title="点我返回首页吧~">还是返回首页吧</a>
</div>

</body>
</html>
