<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!-- 站内搜索 -->
<div class="side-box">
	<div class="my-side-title">
		<span class="am-icon-search"> 站内搜索</span>
	</div>
	<div>
		<form class="" action="#" method="get">
			<div class="am-input-group am-input-group-secondary">
		      <input type="text" name="keyword" value="${keyword}" class="am-form-field" placeholder="搜索..." required>
		      <span class="am-input-group-btn">
		        <button class="am-btn am-btn-lg am-btn-secondary" type="submit"><span class="am-icon-search"></span></button>
		      </span>
		      </div>
	    </form>    
	</div>
</div>

<!-- 博客标签云 -->
<div class="side-box">
	<div class="my-side-title">
		<span class="am-icon-tag"> 博客标签</span>
	</div>
	<div id="tagscloud">
		<%-- <c:forEach items="${cloudcategory}" var="ca" varStatus="num">
			<a href="${base}/blog/categorySearcher?category=${ca.id}"
				class="tagc${num.index%3}">${ca.category}</a>
		</c:forEach> --%>
		<a href="blog" class="am-badge am-badge-primary">Blog</a>
		<a href="blinkit" class="am-badge am-badge-secondary">Blinkit</a>
		<a href="cn" class="am-badge am-badge-secondary">cn</a>
		<a href="hibernate" class="am-badge am-badge-primary">Hibernate</a>
		<a href="spring" class="am-badge am-badge-success">Spring</a>
		<a href="struts" class="am-badge am-badge-danger">Struts</a>
		<a href="blog" class="am-badge am-badge-warning">Blog</a>
		<a href="blinkit" class="am-badge am-badge-warning">Blinkit</a>
		<a href="cn" class="am-badge am-badge-danger">cn</a>
		<a href="hibernate" class="am-badge am-badge-primary">Hibernate</a>
		<a href="spring" class="am-badge am-badge-secondary">Spring</a>
		<a href="struts" class="am-badge am-badge-warning">Struts</a>
		<a href="blog" class="am-badge am-badge-success">Blog</a>
		<a href="blinkit" class="am-badge am-badge-primary">Blinkit</a>
		<a href="cn" class="am-badge am-badge-success">cn</a>
		<a href="hibernate" class="am-badge am-badge-secondary">Hibernate</a>
		<a href="spring" class="am-badge am-badge-success">Spring</a>
		<a href="struts" class="am-badge am-badge-secondary">Struts</a>
	</div>
</div>

<c:if test="${not empty gonggao}">
	<div class="side-box">
		<div class="my-side-title">
			<span><i class="am-icon-spinner am-icon-spin"></i> 滚动播报</span>
		</div>
		<div id="demo2" class="scroll-text">
			<ul>
				<c:forEach items="${gonggao}" var="g" varStatus="vs">
					<li><span class="am-badge am-badge-secondary am-round">${vs.count}</span>&nbsp;<a
						href="${g.url}">${g.content}</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
</c:if>

<div class="side-box" style="margin-top: 15px">
	<div class="am-tabs" data-am-tabs>
		<ul class="am-tabs-nav am-nav am-nav-tabs" style="margin-left: 0px;">
			<li class="am-active"><a href="#tab1">热评文章</a></li>
			<li><a href="#tab2">最新评论</a></li>
			<li><a href="#tab3">最近访客</a></li>
		</ul>

		<div class="am-tabs-bd">
			<div class="am-tab-panel am-fade am-in am-active" id="tab1">
				<!-- 多说热评文章 start -->
				<div class="ds-top-threads" data-range="monthly" data-num-items="5"></div>
				<!-- 多说热评文章 end -->
			</div>
			<div class="am-tab-panel am-fade" id="tab2">
				<!-- 多说最新评论 start -->
				<div class="ds-recent-comments" data-num-items="5"
					data-show-avatars="1" data-show-time="1" data-show-title="1"
					data-show-admin="1" data-excerpt-length="70"></div>
				<!-- 多说最新评论 end -->
			</div>
			<div class="am-tab-panel am-fade" id="tab3" style="width: 95%">
				<ul class="ds-recent-visitors" data-num-items="18" style="margin-right: 0px;"></ul>
			</div>
		</div>
	</div>
</div>
<!-- 友情链接 -->
<div class="side-box">
	<div class="my-side-title">
		<span class="am-icon-link"> 友情链接</span>
	</div>
	<div id="right-side-friendLink">
		<ul>
			<s:iterator value="friendlyLinkList">
				<li><a href="<s:property value='linkURL'/>" target="_blank" title="<s:property value='linkTitle'/>"><s:property value='linkName'/></a></li>
			</s:iterator>
		</ul>
	</div>
</div>
