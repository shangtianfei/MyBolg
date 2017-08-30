<%@page pageEncoding="UTF-8"%><!-- 规定字符编码 -->
<%
	String pathModal = request.getContextPath();
	String basePathModal = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ pathModal + "/";
%>
<html>
<body>
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="preAddTag" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">添加类别</h4>
				</div>
				<div class="modal-body">
					<input type="text" class="form-control" placeholder="输入类别名"
						id="category_name">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" id="addTag">保存</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="userSet" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">用户设置</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="update_userinfo_form">
						<input type="hidden" value="${sessionScope.sqlUserinfo.user_id }"
							name="user_id" />
						<div class="form-group">
							<label for="edit_customerName" class="col-sm-2 control-label">同户名</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" placeholder="用户名"
									name="username" value="${sessionScope.sqlUserinfo.username }">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_customerName" class="col-sm-2 control-label">密码</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" placeholder="密码"
									name="password" value="${sessionScope.sqlUserinfo.password }">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_customerName" class="col-sm-2 control-label">邮箱</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" placeholder="邮箱"
									name="user_email"
									value="${sessionScope.sqlUserinfo.user_email }">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary"
						onclick="updateUserinfo()">提交修改</button>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	function updateUserinfo() {
		$.ajax({
			type:"post",
			url:"<%=basePathModal%>userinfo/updateUserinfo",
				data : $("#update_userinfo_form").serialize(),
				success : function(data) {
					window.location.href='<%=basePathModal%>preLogin';
				}
			});
		};
	</script>
</body>
</html>