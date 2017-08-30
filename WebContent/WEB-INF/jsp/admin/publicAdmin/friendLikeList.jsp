<%@page pageEncoding="UTF-8"%><!-- 规定字符编码 -->
<%
	String pathFriendLikes = request.getContextPath();
	String basePathFriendLikes = request.getScheme() + "://" + request.getServerName() + ":"
			+ request.getServerPort() + pathFriendLikes + "/";
%>
<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-12">
			<h1 class="page-header">友链管理</h1>
			<button type="button" class="btn btn-default" data-toggle="modal"
				data-target="#addFriendLikes">添加友链</button>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<table class="table table-bordered">
		<caption>友链总数为(${friendLinkList.size()})</caption>
		<thead>
			<tr>
				<th>排序</th>
				<th>站名</th>
				<th>网址</th>
				<th>排序</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items='${friendLinkList}' var='friendLinkList'
				varStatus='status'>
				<tr align="center">
					<input id="${friendLinkList.id }input" type="hidden"
						value="${friendLinkList.id }" />
					<td>${status.count }</td>
					<td>${friendLinkList.web_name }</td>
					<td><a href="${friendLinkList.web_url }" target='_blank'>${friendLinkList.web_url }</a></td>
					<td>${friendLinkList.sort_num }</td>
					<td>
						<div class="btn-group btn-group-xs">
							<button type="button" class="btn btn-default" data-toggle="modal"
								data-target="#updateFriendLikes"
								onclick="preUpdateFriendLike(${friendLinkList.id})">修改</button>
							<button type="button" class="btn btn-default"
								onclick="deleteFriendLike(${friendLinkList.id})">删除</button>
						</div>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<!-- 客户编辑对话框 -->
	<div class="modal fade" id="updateFriendLikes" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">修改友链信息</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="edit_friendLikes_form">
						<input type="hidden" id="edit_firendLikes_id" name="id" />
						<div class="form-group">
							<label for="edit_customerName" class="col-sm-2 control-label">站名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_web_name"
									placeholder="站名" name="web_name">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_customerName" class="col-sm-2 control-label">网址</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_web_url"
									placeholder="网址" name="web_url">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_customerName" class="col-sm-2 control-label">序号</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_sort_num"
									placeholder="序号越小，排名越靠前" name="sort_num">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-2"></div>
							<div class="col-sm-10">ps:序号越小，排名越靠前</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary"
						onclick="updateFriendLike()">保存修改</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="addFriendLikes" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">添加友链</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="add_friendLikes_form">
						<div class="form-group">
							<label for="edit_customerName" class="col-sm-2 control-label">站名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_web_name"
									placeholder="站名" name="web_name">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_customerName" class="col-sm-2 control-label">网址</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_web_url"
									placeholder="网址" name="web_url">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_customerName" class="col-sm-2 control-label">序号</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="edit_sort_num"
									placeholder="序号越小，排名越靠前" name="sort_num">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-2"></div>
							<div class="col-sm-10">ps:序号越小，排名越靠前</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary"
						onclick="addFriendLike()">添加</button>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
function preUpdateFriendLike(friendLikes_id) {
	$.ajax({
		type:"get",
		url:"<%=basePathFriendLikes%>friendLikes/preUpdateFriendLike",
		data:{"friendLikes_id":friendLikes_id},
		success:function(data) {  
			$("#edit_firendLikes_id").val(data.id);
			$("#edit_web_name").val(data.web_name);
			$("#edit_web_url").val(data.web_url);
			$("#edit_sort_num").val(data.sort_num);
		}
	});
};

function updateFriendLike() {
	$.ajax({
		type:"post",
		url:"<%=basePathFriendLikes%>friendLikes/updateFriendLike",
		data:$("#edit_friendLikes_form").serialize(),
		success:function(data) {  
			window.location.reload();
		}
	});
};

function addFriendLike() {
	$.ajax({
		type:"post",
		url:"<%=basePathFriendLikes%>friendLikes/updateFriendLike",
		data:$("#add_friendLikes_form").serialize(),
		success:function(data) {  
			window.location.reload();
		}
	});
};

function deleteFriendLike(friendLikes_id) {
	$.ajax({
		type:"get",
		url:"<%=basePathFriendLikes%>friendLikes/deleteFriendLike",
		data:{"friendLikes_id":friendLikes_id},
		success:function(data) {  
			window.location.reload();
		}
	});
};

</script>