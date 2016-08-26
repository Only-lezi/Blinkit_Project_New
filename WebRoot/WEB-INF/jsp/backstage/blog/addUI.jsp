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
  <link rel="icon" type="image/png" href="assets/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <%@ include file="/WEB-INF/jsp/common/backstage/taglib_backstage.jsp"%>
  
	<!-- ueditor富文本编辑器 -->
	<script type="text/javascript" charset="utf-8" src="${basePath}ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="${basePath}ueditor/ueditor.all.min.js"> </script>
	<script type="text/javascript" charset="utf-8" src="${basePath}ueditor/lang/zh-cn/zh-cn.js"></script>
  
  <title>布灵格后台 | 写Blog</title>

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
			<!-- <div class="am-cf am-padding am-padding-bottom-0">
			<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">添加新Blog</strong> / <small>Blog</small></div>
			</div>
			<hr/> -->
			
			<div class="am-panel">
				<form class="am-form">
		            <div class="am-g am-margin-top">
		              <div class="am-u-sm-3 am-u-md-2 am-text-center">Blog标题  :</div>
		              <div class="am-u-sm-8 am-u-md-5">
		                <input type="text" class="am-input-sm">
		              </div>
		              <div class="am-hide-sm-only am-u-md-5">*必填，不可重复</div>
		            </div>
		
		            <div class="am-g am-margin-top">
		              <div class="am-u-sm-3 am-u-md-2 am-text-center">Blog作者  :</div>
		              <div class="am-u-sm-8 am-u-md-5">
		                <input type="text" class="am-input-sm">
		              </div>
		              <div class="am-hide-sm-only am-u-md-5">*必填</div>
		            </div>
		
		            <div class="am-g am-margin-top">
		              <div class="am-u-sm-3 am-u-md-2 am-text-center">Blog分类  :</div>
		              <div class="am-u-sm-8 am-u-md-5">
		                <input type="text" class="am-input-sm">
		              </div>
		              <div class="am-hide-sm-only am-u-md-5">*必填，不可重复</div>
		            </div>
		
		            <div class="am-g am-margin-top">
		              <div class="am-u-sm-3 am-u-md-2 am-text-center">Blog标签  :</div>
		              <div class="am-u-sm-8 am-u-md-5">
		                <input type="text" class="am-input-sm">
		              </div>
		              <div class="am-hide-sm-only am-u-md-5">*文章标签（添加Tag，你的内容能被更多人看到）<a href="#why">我们为什么要打Tag？</a></div>
		            </div>
		            
		            <div class="am-g am-margin-top">
		              <div class="am-u-sm-3 am-u-md-2 am-text-center">Blog图片  :</div>
		              <div class="am-u-sm-8 am-u-md-5">
		                <input type="text" class="am-input-sm">
		              </div>
		              <div class="am-hide-sm-only am-u-md-5">*必填，不可重复</div>
		            </div>
		            
		            <div class="am-g am-margin-top-sm">
		              <div class="am-u-sm-3 am-u-md-2 am-text-center">Blog摘要 :</div>
		              <div class="am-u-sm-8 am-u-md-5"><!--  am-u-end -->
		                <textarea rows="8" style="resize: none;"></textarea>
		              </div>
		              <div class="am-hide-sm-only am-u-md-5">* 默认自动提取您文章的前200字显示在博客首页作为文章摘要，您也可以在这里自行编辑</div>
		            </div>
		
		            <div class="am-g am-margin-top-sm">
		              <!-- <div class="am-u-sm-12 am-u-md-2 am-text-right admin-form-text">内容描述</div> -->
		              <div class="am-u-sm-3 am-u-md-2 am-text-center">Blog内容 :</div>
		              <hr data-am-widget="divider" style="" class="am-divider am-divider-dashed" />
		              <!-- <br/> -->
		             
		              <div class="am-u-sm-12 am-u-md-10">
		              	<div id="ueditor" name="comments.leaveMessages" style="height:500px;" class="am-radius am-input-group-secondary"></div>
		                <!-- <textarea rows="10" placeholder="请使用富文本编辑插件"></textarea> -->
		              </div>	
		            </div>
		            <br/>
		            <p style="text-indent: 3rem;">提示：请不要发布任何推广、广告（包括招聘）、政治、低俗等方面的内容，不要把博客当作SEO工具，否则可能会影响到您的使用。</p>
		            <hr data-am-widget="divider" style="" class="am-divider am-divider-dashed" />
		            <div class="am-u-md-6  am-u-md-centered">
		            	<input class="am-btn am-btn-primary " onclick="submitForm()" value="发表你的Blog"/>&nbsp;&nbsp;&nbsp;
		            	<a href="#" class="am-btn am-btn-warning"> 舍弃，慎点 | 回到主页 </a>
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

<script type="text/javascript">
	// 实例化ueditor富编辑器
	window.UEDITOR_HOME_URL = "${basePath}ueditor/";
	var ue = UE.getEditor('ueditor');
	
	// 提交留言
	function submitForm() {
        if (ue.hasContents() == false) {
        	alert("你还没有留言呢，不要点提交~");
			return false;
        }
        var nickName = $("#nickName");
        if (nickName.val() == "" || nickName.val() == null) {
			alert("不填昵称，难道你要匿名吗=_=");
			nickName.focus();
			return false;
		}
		var userEmail = $("#userEmail");
		if (userEmail.val() == "" || userEmail.val() == null) {
			alert("还是写下你的邮箱吧~");
			userEmail.focus();
			return false;
		}
		$("#comments_form").submit();
        
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