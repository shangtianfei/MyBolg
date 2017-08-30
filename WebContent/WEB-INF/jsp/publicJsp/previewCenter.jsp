<%@page pageEncoding="UTF-8"%><!-- 规定字符编码 -->
<%
	String previewPath = request.getContextPath();
	String previewBasePath = request.getScheme() + "://" + request.getServerName() + ":"
			+ request.getServerPort() + previewPath + "/";
%>
<html>
<body>
	<div id='articleListDiv'>
		<c:forEach items='${articleList}' var='articleList'>
			<div class='panel panel-default'>
				<div class='panel-body'>
					<h3>
						<a
							href='<%=previewBasePath%>selectByPrimaryKey/${articleList.article_id }'
							title='${articleList.article_name }'>${articleList.article_name }</a>
						<small><em><span class="label label-primary">${articleList.category.category_name }</span></em></small>
					</h3>
					<p>${articleList.article_thumb }</p>
					<p align='right'>
						<span class='glyphicon glyphicon-user'>:<a href='#'
							title='作者${articleList.userinfo.username }'>${articleList.userinfo.username }</a></span>&ensp;
						<span class='glyphicon glyphicon-thumbs-up'>:<a href='#'
							title='为我点赞'>${articleList.article_love }</a></span>&ensp; <span
							class='glyphicon glyphicon-eye-open'>:<a href='#'
							title='有${articleList.article_view }人阅读这篇文章'>${articleList.article_view }</a></span>&ensp;
					</p>
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>