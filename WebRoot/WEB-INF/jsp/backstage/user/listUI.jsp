<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
  <meta name="apple-mobile-web-app-title" content="布灵格" />
  <%@ include file="/WEB-INF/jsp/common/backstage/taglib_backstage.jsp"%>
  <title>布灵格 | 后台管理</title>

</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，布灵格  暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
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
      <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">用户列表</strong> / <small>Table</small></div>
      </div>

      <hr>

      <div class="am-g">
        <div class="am-u-sm-12 am-u-md-6">
          <div class="am-btn-toolbar">
            <div class="am-btn-group-xs"><!-- am-btn-group am-btn-group-xs -->
              <a href="${basePath }admin/user_addUI.action" type="button" class="am-btn am-btn-default" ><span class="am-icon-plus"></span> 新增</a>
              <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 保存</button>
              <button type="button" class="am-btn am-btn-default"><span class="am-icon-archive"></span> 审核</button>
              <a href="javascript:doDeleteAll()" type="button" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span>删除</a>
            </div>
          </div>
        </div>
        <div class="am-u-sm-12 am-u-md-3">
          <div class="am-form-group">
            <select data-am-selected="{btnSize: 'sm'}">
              <option value="option1">所有类别</option>
              <option value="option2">IT业界</option>
              <option value="option3">数码产品</option>
              <option value="option3">笔记本电脑</option>
              <option value="option3">平板电脑</option>
              <option value="option3">只能手机</option>
              <option value="option3">超极本</option>
            </select>
          </div>
        </div>
        <div class="am-u-sm-12 am-u-md-3">
          <div class="am-input-group am-input-group-sm">
            <input type="text" class="am-form-field">
          <span class="am-input-group-btn">
            <button class="am-btn am-btn-default" type="button">搜索</button>
          </span>
          </div>
        </div>
      </div>

      <div class="am-g">
        <div class="am-u-sm-12">
          <form class="am-form">
            <table class="am-table am-table-striped am-table-hover table-main">
              <thead>
              <tr>
                <th class="table-check"><input type="checkbox" id="selAll" onclick="doSelectAll()"/></th>
                <th>头像</th>
                <th>账号</th>
                <th>昵称(用户名)</th>
                <th>密码</th>
                <th>电子邮箱</th>
                <th>手机号码</th>
                <!-- <th>生日</th> -->
                <th>状态</th>
                <!-- <th>自我介绍</th> -->
                <th>操作</th>
              </tr>
              </thead>
              <tbody>
            	<s:iterator value="userContorlList">
	              <tr>
	                <td><input type="checkbox" name="selectedRow" value="<s:property value='userId'/>" /></td>
	                <%-- <td><input type="hidden" value="<s:property value='userId'/>"/></td> --%>
	                <td>头像</td>
	                <td><a href="${basePath }admin/user/user_editUI.action?userControl.userId=<s:property value='userId'/>"><s:property value="account"/></a></td>
	                <td><s:property value="nickName"/></td>
	                <td><s:property value="passWord"/></td>
	                <td><s:property value="userEmail"/></td>
	                <td><s:property value="userPhone"/></td>
	                <%-- <td><s:property value="birthday"/></td> --%>
	                <td><s:property value="state?'有效':'无效'"/></td>
	                <%-- <td><s:property value="userDesc"/></td> --%>
	                <td>
	                  <div class="am-btn-toolbar">
	                    <div class="am-btn-group am-btn-group-xs">
	                      <a href="${basePath }admin/user/user_editUI.action?userControl.userId=<s:property value='userId'/>"  class="am-btn am-btn-default am-btn-xs am-text-secondary"><span class="am-icon-pencil-square-o"></span> 编辑</a>
	                      <a href="${basePath }admin/user/user_delete.action?userControl.userId=<s:property value='userId'/>" type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"><span class="am-icon-trash-o"></span> 删除</a>
	                    </div>
	                  </div>
	                </td>
	                
	              </tr>
           		</s:iterator>
              </tbody>
            </table>
            <div class="am-cf">
              共 15 条记录
              <div class="am-fr">
                <ul class="am-pagination">
                  <li class="am-disabled"><a href="#">«</a></li>
                  <li class="am-active"><a href="#">1</a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">4</a></li>
                  <li><a href="#">5</a></li>
                  <li><a href="#">»</a></li>
                </ul>
              </div>
            </div>
            <hr />
            <p>注：.....</p>
          </form>
        </div>

      </div>
    </div>

	<!-- 底部版权信息 -->
	<%@ include file="/WEB-INF/jsp/common/backstage/admin_footer.jsp" %>

  </div>
  <!-- content end -->
</div>

<a href="#" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"></a>
</body>
	<script type="text/javascript">
		// 全选、反全选
		function doSelectAll() {
			// jQuery 1.6 前
			// $("input[name=selectedRow]").attr("checked", $("#selAll").is(":checked"));
			// prop jQuery 1.6+建议使用
			$("input[name=selectedRow]").prop("checked", $("#selAll").is(":checked"));
		}
		// 新增用户
		function doAdd() {
			document.forms[0].action = "${basePath }admin/user/user_addUI.action";
			document.forms[0].submit();
		}
		// 编辑用户
		function doEdit(id) {
			document.forms[0].action = "${basePath }admin/user/user_editUI.action?userControl.userId" + id;
			document.forms[0].submit();
		}
		// 删除用户
		function doDelete(id) {
			document.forms[0].action = "${basePath }admin/user/user_delete.action?qwe" + id;
			document.forms[0].submit();
		}
		// 新增用户
		function doDeleteAll() {
			document.forms[0].action = "${basePath }admin/user/user_deleteSelected().action";
			document.forms[0].submit();
		}
	</script>
</html>
