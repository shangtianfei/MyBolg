<%@page pageEncoding="UTF-8"%><!-- 规定字符编码 -->
<%
	String pathLeft = request.getContextPath();
	String basePathLeft = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ pathLeft + "/";
%>
<html>
<body>
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="查询内容...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
							</button>
						</span>
					</div> <!-- /input-group -->
				</li>
				<li><a href="toEdit"><i class="fa fa-edit fa-fw"></i> 新建文章</a></li>
				<li><a href="#feileidemo" data-toggle="collapse"><i
						class="glyphicon glyphicon-align-right"></i> 分类管理</a></li>
				<div id="feileidemo" class="collapse">
					<div class="table-responsive">
						<table class="table table-condensed">
							<caption>
								共有<b>${categoryList.size()}</b>个分类
								<button href="#" data-toggle="modal" data-target="#preAddTag"
									class="btn btn-default" title="点击添加分类">添加分类</button>
							</caption>
							<thead>
								<tr>
									<th>分类名称</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody id="categoryDiv">
								<c:forEach items="${categoryList}" var="categoryList">
									<tr id="${categoryList.category_id}CategoryTr">
										<td align="center"><span id="${categoryList.category_id}">${categoryList.category_name }</span></td>
										<td align="center">
											<div id="${categoryList.category_id}butDiv"
												class="btn-group btn-group-sm" role="group" aria-label="...">
												<a onclick="preUpdateCategory(${categoryList.category_id})"
													class="btn btn-default">修改</a> <a href="#"
													class="btn btn-primary"
													onclick="deleteCategory(${categoryList.category_id})">删除</a>
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<li><a href="<%=basePathLeft %>admin"><i
						class="glyphicon glyphicon-print"></i> 文章管理</a></li>
				<li><a href="<%=basePathLeft %>adminAccess"><i
						class="fa fa-dashboard fa-fw"></i> 访问管理</a></li>
				<li><a href="<%=basePathLeft %>firendLikes"><i
						class="glyphicon glyphicon-paperclip"></i> 友链管理</a></li>
			</ul>
		</div>
		<!-- /.sidebar-collapse -->
	</div>
	<!-- /.navbar-static-side -->
</body>
</html>