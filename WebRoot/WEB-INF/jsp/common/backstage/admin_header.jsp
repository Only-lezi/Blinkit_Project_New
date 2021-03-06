<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<header class="am-topbar admin-header">
	<div class="am-topbar-brand">
		<img src="${basePath }images/blinkit_logo.png" alt="布灵格 | blinkit.cn" style="width: 110px;"  />&nbsp;<strong>后台管理</strong>&nbsp;<small>   欢迎你： <span style="color: #3bb4f2;"><s:property value="#session.currentAdmin.adminName"/></span></small>
	</div>

<button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

<div class="am-collapse am-topbar-collapse" id="topbar-collapse">

	<ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
		<li><a href="javascript:;"><span class="am-icon-envelope-o"></span> 收件箱 <span class="am-badge am-badge-warning">5</span></a></li>
		<li class="am-dropdown" data-am-dropdown>
			<a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
				<span class="am-icon-user"></span> 管理员 <span class="am-icon-caret-down"></span>
			</a>
			<ul class="am-dropdown-content">
				<li><a href="#"><span class="am-icon-user"></span> 资料</a></li>
				<li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
				<li><a href="${basePath }admin/logout.action"><span class="am-icon-power-off"></span> 退出</a></li>
			</ul>
		</li>
	</ul>
</div>
</header>