<%@page pageEncoding="UTF-8"%><!-- 规定字符编码 -->
<html>
<body>
	<div class='col-md-12 column'>
		<div class='row clearfix'>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">发表评论</h3>
				</div>
				<div class="panel-body">
					<form class="form-horizontal" role="form" id="fromComment">
						<div class="form-group">
							<div class="col-sm-10">
								<input type="text" name="username" class="form-control"
									placeholder="输入名称（必填） ">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-10">
								<input type="text" name="useremail" class="form-control"
									placeholder="输入电子邮件（必填，不会被公开）">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-10">
								<input type="text" name="web_likes" class="form-control"
									placeholder="输入你的站点(例如: http://www.baidu.com/)">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<textarea class="form-control" name="content" rows="5"
									placeholder="输入你的评论（管理员审核后你的评论就可以显示在评论区了）"></textarea>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-10">
								<input type="hidden" name="article_id"
									value="${articleWithBLOBs.article_id }" />
								<button type="submit" class="btn btn-default"
									onclick="commentSubmit()">提交</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">
						<b><a href="#">${articleWithBLOBs.article_name }<a></a></b>共有评论${commentList.size()}条
					</h3>
				</div>
				<div class="panel-body">
					<ul class="media-list">
						<c:forEach items='${commentList}' var='commentList'
							varStatus="status">
							<li class="media"><a class="media-left" href="#"> <img
									class="img-rounded" width="50" height="50"
									src="http://localhost:8080/mybolg/static/v3/cat.jpg"
									alt="通用的占位符图像">
							</a>
								<div class="media-body">
									<h5 class="media-heading">
										<a href="${commentList.web_likes }">${commentList.username }</a>&nbsp;&nbsp;&nbsp;&nbsp;<small>${commentList.timestamp }</small>
									</h5>
									<p>${commentList.content }</p>
									<p align="right">${status.count }楼|<a
											title="回复层主${commentList.username }">回复</a>
									</p>
								</div></li>
							<hr />
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>