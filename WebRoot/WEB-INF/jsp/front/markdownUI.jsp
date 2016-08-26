<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="en">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	<meta name="author" content="Only-lezi" />
	<meta name="keywords" content="blinkit.cn,布灵格,java博客,amazeui博客,IT,技术,移动开发,Web前端,企业架构,编程语言,互联网,数据库,技术博客,blog" />
	<meta name="description" content="Only-lezi的个人博客，主要是分享java和HTML相关的知识。
		本站采用java和Amaze UI前端UI框架自主开发而成，网站会不定时更新新的模块和功能。当功能完善后会考虑开源。" />
	<meta name="format-detection" content="telephone=no">
	<meta name="renderer" content="webkit">
	<%@ include file="/WEB-INF/jsp/common/front/taglib_front.jsp"%>
	
	<!-- 引入MarkDown的css文件 -->
	<link rel="stylesheet" href="${basePath }editor_md/css/editormd.min.css" />
	<title>布灵格 | MarkDown</title>
</head>
<body>

<!-- 导航栏 -->
<%@ include file="/WEB-INF/jsp/common/front/blinkit_header.jsp" %>

<div class="am-container " id="main">
	<div class="am-g am-g-fixed">
		<div style="text-align:center; color: white;">
			欢迎使用 <strong>布灵格</strong> 提供的 MarkDown 编辑器
		</div>
		<br/>
		
		<form action="#" method="post">
			<div id="editormd">
	    		<textarea style="display:none;">### 布灵格 ◎ 出品，必属精品 !</textarea>
			</div>
			<div class="am-u-md-3  am-u-md-centered" style="padding: 0;">
				<button type="submit" class="am-btn am-btn-primary" disabled="disabled">提交保存</button>&nbsp;
				<input type="reset" class="am-btn am-btn-warning" disabled="disabled" value="重置 | 重新填写" />
			</div>
		</form>
		
		<script src="${basePath }editor_md/editormd.js"></script>
		<script type="text/javascript">
		    $(function() {
		        var editor = editormd("editormd", {
		        	width  : "90%", // 编辑器宽
                    height  : 650, // 编辑器高
		            path : "${basePath}editor_md/lib/",   // Editormd目录里面的lib目录路径
		            theme : "light", // 编辑器主题"light"是白色，"dark"是黑色主题
		            //previewTheme : "chrome", // 预览区主题
		            //editorTheme : "lesser-dark", // 编辑区主题
		            codeFold : true, // 启用代码折叠
                        saveHTMLToTextarea : true,    // 保存 HTML 到 Textarea
                        searchReplace : true, // 启用搜索替换
                        //htmlDecode : "style,script,iframe|on*", // 开启 HTML 标签解析，为了安全性，默认不开启    ps:这句话可能会导致复制粘贴东西的时候右面预览区不能自动解析
                        emoji : true, // 启用emoji表情
                        taskList : true, // 任务列表
                        tocm      : true,         // Using [TOCM]
                        tex : true,               // 开启科学公式TeX语言支持，默认关闭
                        //flowChart : true,         // 开启流程图支持，默认关闭
                        //sequenceDiagram : true,   // 开启时序/序列图支持，默认关闭,
                        imageUpload : true, // 启用图片上传
                        imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"], // 允许上传的图片类型
                        imageUploadURL : "#index.jsp?s=uploadArticleImg}", // 处理图片上传功能的地址
                        //onload : function() { // 加载完毕的回调函数
                            //console.info('EditorMD 加载完毕!');
                        //watch : false,                // 关闭实时预览
                        //toolbar  : false,             //关闭工具栏
                        //previewCodeHighlight : false, // 关闭预览 HTML 的代码块高亮，默认开启
                        //dialogLockScreen : false,   // 设置弹出层对话框不锁屏，全局通用，默认为true
                        //dialogShowMask : false,     // 设置弹出层对话框显示透明遮罩层，全局通用，默认为true
                        //dialogDraggable : false,    // 设置弹出层对话框不可拖动，全局通用，默认为true
                        //dialogMaskOpacity : 0.4,    // 设置透明遮罩层的透明度，全局通用，默认值为0.1
                        // dialogMaskBgColor : "#000", // 设置透明遮罩层的背景颜色，全局通用，默认为#fff
		        		//}
		        
		        });
		    });
		    
		   /*  function saveMarkDown() {
			    var content = editor.getMarkdown();
			    alert(content);
		    }
		    */
		</script>
	</div>
</div>
	
<!-- 版权信息 -->
<%@ include file="/WEB-INF/jsp/common/front/blinkit_footer.jsp" %>
</body>
</html>