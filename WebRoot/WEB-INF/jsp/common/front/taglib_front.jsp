<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
    pageContext.setAttribute("basePath", request.getContextPath()+"/");
%>
	<!-- 引入标题栏图标(网站LOGO图标) -->
	<link rel="alternate icon" type="image/png" href="${basePath}images/blinkit64.png">
    <link rel="apple-touch-icon-precomposed" href="${basePath}images/blinkit64.png">

	<!-- 引入css、js -->
	<link type="text/css" rel="stylesheet" href="${basePath}assets/css/amazeui.min.css">
	<link type="text/css" rel="stylesheet" href="${basePath}assets/css/blinkit.css">
	
	<script src="${basePath}assets/js/jquery.min.js"></script>
	<script src="${basePath}assets/js/amazeui.js"></script>
	
	    


