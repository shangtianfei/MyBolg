<%@page pageEncoding="UTF-8"%><!-- 规定字符编码 -->
<html>
<body>
	<div class='panel panel-default'>
		<div class='panel-body'>
			<div id="layout" style="width: 100%;">
				<div id="head-div" class="page-header">
					<h1>
						<b>${articleWithBLOBs.article_name }</b>
						<c:if test="${sessionScope.sqlUserinfo.username != null}">
							<small><a class="btn btn-default"
								href="${pageContext.request.contextPath }/edit/preUpdateEdit/${articleWithBLOBs.article_id }"
								role="button">编辑</a></small>
						</c:if>
					</h1>
					<span class="glyphicon glyphicon-user">&nbsp;${articleWithBLOBs.userinfo.username }</span>&emsp;
					<span class="glyphicon glyphicon-tags">&nbsp;${articleWithBLOBs.category.category_name}</span>&emsp;
					<span class="glyphicon glyphicon-time">&nbsp;${articleWithBLOBs.publish_time }</span>&emsp;
					<span class="glyphicon glyphicon-paperclip">&nbsp;${articleWithBLOBs.article_view }评论</span>
				</div>
				<div id="test-editormd-view2">
					<textarea id="append-test" style="display: none;">${articleWithBLOBs.article_content }</textarea>
				</div>
			</div>
		</div>
	</div>
</body>
</html>