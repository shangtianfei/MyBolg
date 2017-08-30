<%@page pageEncoding="UTF-8"%><!-- 规定字符编码 -->
<%
	String pathAccess = request.getContextPath();
	String basePathAccess = request.getScheme() + "://" + request.getServerName() + ":"
			+ request.getServerPort() + pathAccess + "/";
%>
<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">
				访问管理<small>(${allCommentList.size()})</small>
			</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<ul class="nav nav-tabs">
		<!--未处理评论，已处理评论，禁止评论的代号分别是 0.1.2  -->
		<li class="active"><a href="#yichuli" data-toggle="tab">
				未处理评论 </a></li>
		<li><a href="#weichuli" data-toggle="tab">已处理评论</a></li>
		<li><a href="#jinzhipinglun" data-toggle="tab">禁止评论</a></li>
	</ul>
	<div id="myTabContent" class="tab-content">
		<div class="tab-pane fade in active" id="yichuli">
			<ul class="list-group">
				<c:forEach items="${allCommentList}" var="allCommentList">
					<c:if test="${allCommentList.is_checked == 0}">
						<li id="${allCommentList.id}commentId" class="list-group-item"><span
							class="badge">${allCommentList.timestamp }</span><b>${allCommentList.username }</b>
							在<a
							href="${pageContext.request.contextPath }/selectByPrimaryKey/${allCommentList.article.article_id }"><b>${allCommentList.article.article_name }</b></a>下发表了自己的评论
							<div class="btn-group btn-group-xs">
								<button type="button" class="btn btn-default"
									onclick="updateCommect('${allCommentList.id}','1')">通过审核</button>
								<button type="button" class="btn btn-default"
									onclick="deleteCommect(${allCommentList.id})">删除</button>
							</div> <br />
							<div class="panel panel-default">
								<div class="panel-body">
									<u>${allCommentList.content }</u>
								</div>
								<div class="panel-footer">
									<b>${allCommentList.username }</b>的邮箱 :
									${allCommentList.useremail }<br /> <b>${allCommentList.username }</b>的站点
									: <a href="${allCommentList.web_likes }">${allCommentList.web_likes }</a>
								</div>
							</div></li>
					</c:if>
				</c:forEach>
			</ul>
		</div>
		<div class="tab-pane fade" id="weichuli">
			<ul class="list-group" id="weichuliUl">
				<c:forEach items="${allCommentList}" var="allCommentList">
					<c:if test="${allCommentList.is_checked == 1}">
						<li id="${allCommentList.id}commentId" class="list-group-item"><span
							class="badge">${allCommentList.timestamp }</span><b>${allCommentList.username }</b>
							在<a
							href="${pageContext.request.contextPath }/selectByPrimaryKey/${allCommentList.article.article_id }">${allCommentList.article.article_name }</a>下发表了自己的评论
							<div class="btn-group btn-group-xs">
								<button type="button" class="btn btn-default"
									onclick="updateCommect('${allCommentList.id}','2')">禁止显示</button>
								<button type="button" class="btn btn-default"
									onclick="deleteCommect(${allCommentList.id})">删除</button>
							</div> <br />
							<div class="panel panel-default">
								<div class="panel-body">
									<u>${allCommentList.content }</u>
								</div>
								<div class="panel-footer">
									<b>${allCommentList.username }</b>的邮箱 :
									${allCommentList.useremail }<br /> <b>${allCommentList.username }</b>的站点
									: <a href="${allCommentList.web_likes }">${allCommentList.web_likes }</a>
								</div>
							</div></li>
					</c:if>
				</c:forEach>
			</ul>
		</div>
		<div class="tab-pane fade" id="jinzhipinglun">
			<ul class="list-group">
				<c:forEach items="${allCommentList}" var="allCommentList">
					<c:if test="${allCommentList.is_checked == 2}">
						<li id="${allCommentList.id}commentId" class="list-group-item"><span
							class="badge">${allCommentList.timestamp }</span><b>${allCommentList.username }</b>
							在<a
							href="${pageContext.request.contextPath }/selectByPrimaryKey/${allCommentList.article.article_id }">${allCommentList.article.article_name }</a>下发表了自己的评论
							<div class="btn-group btn-group-xs">
								<button type="button" class="btn btn-default"
									onclick="updateCommect('${allCommentList.id}','1')">允许显示</button>
								<button type="button" class="btn btn-default"
									onclick="deleteCommect(${allCommentList.id})">删除</button>
							</div> <br />
							<div class="panel panel-default">
								<div class="panel-body">
									<u>${allCommentList.content }</u>
								</div>
								<div class="panel-footer">
									<b>${allCommentList.username }</b>的邮箱 :
									${allCommentList.useremail }<br /> <b>${allCommentList.username }</b>的站点
									: <a href="${allCommentList.web_likes }">${allCommentList.web_likes }</a>
								</div>
							</div></li>
					</c:if>
				</c:forEach>
			</ul>
		</div>
	</div>
</div>
<script type="text/javascript">
			function deleteCommect(commentId){
				$.ajax({
					type:"get",
					url:"<%=basePathAccess%>comment/delete",
			data : {
				"commentId" :commentId
			},
			success : function(data) {
				document.getElementById( commentId+"commentId").style.display= "none "; /* 隐藏div */
			}
		});
	};
		function updateCommect(commentId,is_checked){
			 $.ajax({
				type:"get",
				url:"<%=basePathAccess%>comment/updateCommect",
		data : {
			"commentId" :commentId,
			"is_checked":is_checked
		},
		success : function(data) {
			document.getElementById( commentId+"commentId").style.display= "none "; /* 隐藏div */
		}
	}); 
	};
	
</script>