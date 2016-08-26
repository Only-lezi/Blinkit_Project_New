<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="am-topbar blinkit-topbar">
		<div class="am-container">
			<h1 class="am-topbar-brand">
				<a href="http://www.blinkit.cn" class="blinkit-logo">
					<img src="${basePath }images/blinkit_logo.png" alt="布灵格 | blinkit.cn">
				</a>
			</h1>
	
			<button
				class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
				data-am-collapse="{target: '#doc-topbar-collapse'}">
				<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
			</button>
	
			<div class="am-collapse am-topbar-collapse" id="doc-topbar-collapse">
				<ul class="am-nav am-nav-pills am-topbar-nav">
					<li><a href="http://www.blinkit.cn">首页</a></li>
					<li class="am-dropdown" data-am-dropdown>
						<a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;"> 博客 
							<span class="am-icon-caret-down"></span>
						</a>
						<ul class="am-dropdown-content">
							<li><a href="${basePath }blog/blog_addBlog.action">写博客</a></li>
							<li class=""><a href="#">最新博客</a></li>
							<li><a href="#">最热博客</a></li>
						</ul>
					</li>
					<li class="am-dropdown" data-am-dropdown>
						<a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;"> 小游戏
							<span class="am-icon-caret-down"></span>
						</a>
						<ul class="am-dropdown-content">
							<li>
                            	<a href="../games/html5-canvas-chinese_chess/index.html" target="_blank">中国象棋</a>
	                        </li>
	                        <li>
	                            <a href="../games/fruitNinja/index.html" target="_blank">水果忍者</a>
	                        </li>
	                        <li>
	                            <a href="../games/kongzhongzhanji/index.html" target="_blank">空中战机</a>
	                        </li>
	                        <li>
	                            <a href="../games/BreaktheBricks/index.html" target="_blank">打方块</a>
	                        </li>
	                        <li>
	                            <a href="../games/html5-canvas-drag-tree/index.html" target="_blank">小树</a>
	                        </li>
	                        <li>
	                            <a href="../games/map/index.html" target="_blank">地图</a>
	                        </li>
						</ul>
					</li>
					<li class="am-dropdown" data-am-dropdown>
						<a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;"> 项目
							<span class="am-icon-caret-down"></span>
						</a>
						<ul class="am-dropdown-content">
							<li>
								<a href="../EPM_ManagerSystem/index.jsp">EPM管理系统</a>
	                        </li>
	                        <li>
	                        	<a href="../cnsoftbei/login.jsp">报纸阅览</a>
	                        </li>
	                        <li>
	                        	<a href="../E_source_shopping/index.html">亿购网</a>
	                        </li>
						</ul>
					</li>
					<li>
						<a href="${basePath }home_markdownUI.action" >MarkDown</a>
					</li>
					<li>
						<a href="http://www.blinkit.cn/comments/comments_listUI.action" >留言板</a>
					</li>
					
				</ul>
	
				<div class="am-topbar-right">
					<a href="${basePath }home_loginUI.action" class="am-btn am-btn-primary am-topbar-btn am-btn-sm">登录</a>
				</div>
	
				<div class="am-topbar-right">
					<div class="am-dropdown" data-am-dropdown="{boundary: '.am-topbar'}">
						<button class="am-btn am-btn-secondary am-topbar-btn am-btn-sm am-dropdown-toggle" data-am-dropdown-toggle>
							其他 <span class="am-icon-caret-down"></span>
						</button>
						<ul class="am-dropdown-content">
							<li><a href="${basePath }home_registerUI.action">注册</a></li>
							<li><a href="#">随便看看</a></li>
						</ul>
					</div>
				</div>
				<!-- 欢迎你，<s:property value="#session.currentUser.nickName"/> -->
			</div>
		</div>
	</header>
   
   
   
<%-- <li class="am-dropdown am-right" data-am-dropdown="">
                    <a class="am-dropdown-toggle" data-am-dropdown-toggle="" href="javascript:;">
                      	系统
                        <span class="am-icon-caret-down">
                        </span>
                    </a>
                    <ul class="am-dropdown-content">
                        <li>
                            <a href="#javascript:void(0)" onclick="logout();">
                                	注销
                            </a>
                        </li>
                        <li>
                            <a href="#${base}/admins/">
                               	 后台
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
		     <c:if test="${not empty sessionScope.loginUser}">
		     	<div class="am-topbar-right" >
	              	<a id="header-user" class="am-btn am-btn-secondary am-topbar-btn am-btn-sm" href="${base}/user/personalInfo/">个人主页</a>
                </div>
		   	 </c:if>
             <c:if test="${empty sessionScope.loginUser}">
	           <div class="am-topbar-right">
	              	<button class="am-btn am-btn-secondary am-topbar-btn am-btn-sm" data-am-modal="{target: '#login-modal'}">登录</button>
	              	<a href="${base}/qqlogin" style="display:inline-block"><img alt="QQ互联登陆" src="${base}/images/index/Connect_logo_7.png" style="padding-top: 8px;"></a>
	          </div>
	       </c:if>
        </div>
    </div>
</header> --%>


<!-- <script type="text/javascript">
	function logout(){
		$.post("${base}/logout",{},
				   function(data){
					if(data==1){
						layer.alert('注销成功',{closeBtn: 0},function(){
							location.href="${base}/index";
						});
					}else{
						layer.alert('您未登陆或session超时');
					}
					
				   }, "json");
	}
</script>	 -->