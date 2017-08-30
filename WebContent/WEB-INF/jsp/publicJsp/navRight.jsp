<%@page pageEncoding="UTF-8"%><!-- 规定字符编码 -->
<%
	String navRightPath = request.getContextPath();
	String navRightBasePath = request.getScheme() + "://" + request.getServerName() + ":"
			+ request.getServerPort() + navRightPath + "/";
%>
<html>
<body>
	<div class="panel panel-default">
		<div class="panel-heading">近期评论</div>
		<ul class="list-group">
			<c:forEach items='${recentNewsCommentList}'
				var='recentNewsCommentList'>
				<li class="list-group-item"><a
					href="${recentNewsCommentList.web_likes }">${recentNewsCommentList.username }</a>发表在<a
					href="<%=navRightBasePath%>selectByPrimaryKey/${recentNewsCommentList.article_id}">《${recentNewsCommentList.article.article_name }》</a>
				</li>
			</c:forEach>
		</ul>
	</div>
	<div class="panel panel-default">
		<div class="panel-heading">最新动态</div>
		<ul class="list-group">
			<c:forEach items='${recentNewsArticleList}'
				var='recentNewsArticleList'>
				<li class="list-group-item"><a
					href='<%=navRightBasePath%>selectByPrimaryKey/${recentNewsArticleList.article_id }'
					title='${recentNewsArticleList.publish_time }发布'>${recentNewsArticleList.article_name }</a>
				</li>
			</c:forEach>
		</ul>
	</div>
	<div class="panel panel-default">
		<div class="panel-heading">友链</div>
		<ul class="list-group">
			<c:forEach items='${firendLikeList}' var='firendLikeList'>
				<li class="list-group-item"><a
					href='${firendLikeList.web_url }'
					title='${firendLikeList.web_name }' target='_blank'>${firendLikeList.web_name }</a></li>
			</c:forEach>
		</ul>
	</div>
	<div class="panel panel-default">
		<div class="panel-heading">文章类别</div>
		<ul class="list-group">
			<c:forEach items='${categoryList}' var='categoryList'>
				<li class="list-group-item"><a href='javascript:;'
					title='点击显示所有${categoryList.category_name }类的文章'
					onclick='categoryShow("${categoryList.category_id }","${categoryList.category_name }")'>${categoryList.category_name }
				</a></li>
			</c:forEach>
		</ul>
	</div>
</body>
</html>