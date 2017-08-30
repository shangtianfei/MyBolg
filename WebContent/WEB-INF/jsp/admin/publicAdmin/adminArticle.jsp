<%@page pageEncoding="UTF-8"%><!-- 规定字符编码 -->
<html>
<body>
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">文章管理</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body">
				<form class="form-inline"
					action="${pageContext.request.contextPath }/customer/list.action"
					method="get">
					<div class="form-group">
						<label for="customerName">文章题目:</label> <input type="text"
							class="form-control" id="customerName" value="${custName }"
							name="custName">
					</div>
					<div class="form-group">
						<label for="custIndustry">所属分类</label> <select
							class="form-control" id="custIndustry" name="custIndustry">
							<option value="">--请选择--</option>
							<c:forEach items="${industryType}" var="item">
								<option value="${item.dict_id}"
									<c:if test="${item.dict_id == custIndustry}"> selected</c:if>>
									${item.dict_item_name }</option>
							</c:forEach>
						</select>
					</div>
					<button type="submit" class="btn btn-primary">搜索</button>
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">文章信息列表</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>多选框</th>
								<th>文章标题</th>
								<th>文章类别</th>
								<th>文章作者</th>
								<th>发布时间</th>
								<th>修改时间</th>
								<th>查看人数</th>
								<th>点赞数</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody align="center">
							<c:forEach items="${articleList}" var="articleList">
								<tr id="${articleList.article_id}ArticleTr">
									<td><input type="checkbox"
										value="${articleList.article_id}" /></td>
									<td>${articleList.article_name}</td>
									<td>${articleList.category.category_name}</td>
									<td>${articleList.userinfo.username}</td>
									<td>${articleList.publish_time}</td>
									<td>${articleList.modify_time}</td>
									<td>${articleList.article_view}</td>
									<td>${articleList.article_love}</td>
									<td><a href="edit/preUpdateEdit/${articleList.article_id}"
										class="btn btn-primary btn-xs">修改</a> <a href="#"
										class="btn btn-danger btn-xs"
										onclick="deleteEdit(${articleList.article_id})">删除</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
</body>
</html>