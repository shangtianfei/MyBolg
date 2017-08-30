<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"">
<title>login</title>
<link href="<%=basePath%>static/css/bootstrap.min.css" rel="stylesheet">
<!-- DataTables CSS -->
<link href="<%=basePath%>static/css/dataTables.bootstrap.css"
	rel="stylesheet">

</head>
<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-4 column"></div>
			<div class="col-md-4 column">
				<div class="well">
					<div class="tabbable" id="tabs-492239">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#panel-667627" data-toggle="tab">登录</a>
							</li>
							<li><a href="#panel-517956" data-toggle="tab">注册</a></li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="panel-667627">
								<form role="form" action="<%=basePath%>login" method="post">
									<div class="form-group">
										<label for="exampleInputEmail1">账号</label><input type="text"
											class="form-control" id="exampleInputEmail1" value="admin"
											name="username" />
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">密码</label><input
											type="password" class="form-control"
											id="exampleInputPassword1" value="admin" name="password" />
									</div>
									<div class="checkbox">
										<label><input type="checkbox" />记住密码</label>
									</div>
									<button type="submit" class="btn btn-default">登录</button>
								</form>
							</div>
							<div class="tab-pane" id="panel-517956">
								<form role="form">
									<div class="form-group">
										<label for="exampleInputEmail1">Email address</label><input
											type="email" class="form-control" id="exampleInputEmail1" />
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">Password</label><input
											type="password" class="form-control"
											id="exampleInputPassword1" />
									</div>
									<div class="checkbox">
										<label><input type="checkbox" />Check me out</label>
									</div>
									<button type="submit" class="btn btn-default">注册</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 column"></div>
		</div>
	</div>
</body>
<script src="<%=basePath%>static/js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>static/js/bootstrap.min.js"></script>
</html>