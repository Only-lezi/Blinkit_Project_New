<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!-- sidebar start -->
<div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
    <div class="am-offcanvas-bar admin-offcanvas-bar">
      <ul class="am-list admin-sidebar-list">
        <li><a href="${basePath }home_index.action"> 布灵格 <span class="am-icon-home"></span> 前台页面</a></li>
        
        <!-- 后台 | blog管理 -->
		<li class="admin-parent">
			<a class="am-cf" data-am-collapse="{target: '#collapse-nav1'}"><span class="am-icon-file"></span> 博客 | 模块 <span class="am-icon-angle-down am-fr am-margin-right"></span></a>
			<ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav1">
				<li><a href="${basePath }admin/blog/blog_listUI.action" class="am-cf"><span class="am-icon-th"></span> blog管理<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
				<li><a href="${basePath }admin//blog/blog_addUI.action"><span class="am-icon-check"></span> 添加新博客</a></li>
			</ul>
		</li>
        <!-- 后台 | 用户管理 -->
		<li class="admin-parent">
			<a class="am-cf" data-am-collapse="{target: '#collapse-nav2'}"><span class="am-icon-file"></span> 用户 | 模块 <span class="am-icon-angle-down am-fr am-margin-right"></span></a>
			<ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav2">
				<li><a href="${basePath }admin/user/user_listUI.action" class="am-cf"><span class="am-icon-th"></span> 用户管理<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
				<li><a href="${basePath }admin/user/user_addUI.action"><span class="am-icon-check"></span> 新增用户</a></li>
			</ul>
		</li>
		
		<!-- 后台 | 留言板管理 -->
		<li class="admin-parent">
			<a class="am-cf" data-am-collapse="{target: '#collapse-nav3'}"><span class="am-icon-file"></span> 留言 | 模块 <span class="am-icon-angle-down am-fr am-margin-right"></span></a>
			<ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav3"><!--  am-in 改变下拉菜单是否打开 -->
				<li><a href="${basePath }admin/comments/comments_listUI.action" class="am-cf"><span class="am-icon-th"></span> 留言管理<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
				<li><a href="${basePath }admin/comments/comments_addUI.action"><span class="am-icon-check"></span> 添加新留言</a></li>
				<!--  <li><a href="#"><span class="am-icon-th"></span> 相册页面<span class="am-badge am-badge-secondary am-margin-right am-fr">24</span></a></li>
				<li><a href="#"><span class="am-icon-calendar"></span> 系统日志</a></li>
				<li><a href="#"><span class="am-icon-bug"></span> 404</a></li> -->
			</ul>
		</li>
		
		<!-- 后台 | 管理员账户管理 -->
		<li class="admin-parent">
			<a class="am-cf" data-am-collapse="{target: '#collapse-nav4'}"><span class="am-icon-file"></span> 管理账户  | 模块 <span class="am-icon-angle-down am-fr am-margin-right"></span></a>
			<ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav4">
				<li><a href="${basePath }admin/admin/admin_listUI.action" class="am-cf"><span class="am-icon-th"></span> 管理账户   管理<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
				<li><a href="${basePath }admin/admin/admin_addUI.action"><span class="am-icon-check"></span> 添加新管理员</a></li>
			</ul>
		</li>
        
        <li><a href="${basePath }admin/link/listUI.action"><span class="am-icon-compass"></span> 友情链接  </a></li>
        <li><a href="admin-form.html"><span class="am-icon-pencil-square-o"></span> 表单</a></li>
        <li><a href="#"><span class="am-icon-sign-out"></span> 注销</a></li>
      </ul>

		<div class="am-panel am-panel-default admin-sidebar-panel">
			<div class="am-panel-bd">
				<p><span class="am-icon-bookmark"></span> 公告</p>
				<p>猫巷鱼未归，鱼巷猫未随    —— Only-lezi</p>
			</div>
		</div>

		<div class="am-panel am-panel-default admin-sidebar-panel">
			<div class="am-panel-bd">
				<p><span class="am-icon-tag"></span> wiki</p>
				<p>Welcome to the Blinkit wiki!</p>
			</div>
		</div>
    </div>
</div>
<!-- sidebar end -->