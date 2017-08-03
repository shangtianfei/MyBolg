<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Bolg后台列表</title>

<!-- Bootstrap Core CSS -->
<link href="<%=basePath%>static/css/bootstrap.min.css" rel="stylesheet">
<!-- MetisMenu CSS -->
<link href="<%=basePath%>static/css/metisMenu.min.css" rel="stylesheet">
<!-- DataTables CSS -->
<link href="<%=basePath%>static/css/dataTables.bootstrap.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="<%=basePath%>static/css/sb-admin-2.css" rel="stylesheet">
<!-- Custom Fonts -->
<link href="<%=basePath%>static/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="<%=basePath%>static/css/boot-crm.css" rel="stylesheet" type="text/css">
</head>

<body>

	<div id="wrapper">

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/mybolg">Bolg后台管理系统</a>
		</div>
		<!-- /.navbar-header -->

		<ul class="nav navbar-top-links navbar-right">
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-envelope fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-messages">
					<li><a href="#">
							<div>
								<strong>令狐冲</strong> <span class="pull-right text-muted">
									<em>昨天</em>
								</span>
							</div>
							<div>今天晚上向大哥找我吃饭，讨论一下去梅庄的事...</div>
					</a></li>
					<li class="divider"></li>
					<li><a class="text-center" href="#"> <strong>查看全部消息</strong>
							<i class="fa fa-angle-right"></i>
					</a></li>
				</ul> <!-- /.dropdown-messages --></li>
			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-tasks fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-tasks">
					<li><a href="#">
							<div>
								<p>
									<strong>任务 1</strong> <span class="pull-right text-muted">完成40%</span>
								</p>
								<div class="progress progress-striped active">
									<div class="progress-bar progress-bar-success"
										role="progressbar" aria-valuenow="40" aria-valuemin="0"
										aria-valuemax="100" style="width: 40%">
										<span class="sr-only">完成40%</span>
									</div>
								</div>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<p>
									<strong>任务 2</strong> <span class="pull-right text-muted">完成20%</span>
								</p>
								<div class="progress progress-striped active">
									<div class="progress-bar progress-bar-info" role="progressbar"
										aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
										style="width: 20%">
										<span class="sr-only">完成20%</span>
									</div>
								</div>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a class="text-center" href="#"> <strong>查看所有任务</strong>
							<i class="fa fa-angle-right"></i>
					</a></li>
				</ul> <!-- /.dropdown-tasks --></li>
			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-bell fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-alerts">
					<li><a href="#">
							<div>
								<i class="fa fa-comment fa-fw"></i> 新回复 <span
									class="pull-right text-muted small">4分钟之前</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<i class="fa fa-envelope fa-fw"></i> 新消息 <span
									class="pull-right text-muted small">4分钟之前</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<i class="fa fa-tasks fa-fw"></i> 新任务 <span
									class="pull-right text-muted small">4分钟之前</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a href="#">
							<div>
								<i class="fa fa-upload fa-fw"></i> 服务器重启 <span
									class="pull-right text-muted small">4分钟之前</span>
							</div>
					</a></li>
					<li class="divider"></li>
					<li><a class="text-center" href="#"> <strong>查看所有提醒</strong>
							<i class="fa fa-angle-right"></i>
					</a></li>
				</ul> <!-- /.dropdown-alerts --></li>
			<!-- /.dropdown -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
					<i class="fa fa-caret-down"></i>
			</a>
				<ul class="dropdown-menu dropdown-user">
					<li><a href="#"><i class="fa fa-user fa-fw"></i> 用户设置</a></li>
					<li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
					<li class="divider"></li>
					<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>
							退出登录</a></li>
				</ul> <!-- /.dropdown-user --></li>
			<!-- /.dropdown -->
		</ul>
		<!-- /.navbar-top-links -->

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
					<li><a href="toEdit" class="active"><i class="fa fa-edit fa-fw"></i> 新建文章</a></li>
					<li><a href="#" ><i class="glyphicon glyphicon-envelope"></i> 文章管理</a></li>
					<li><a href="salevisit.action"><i class="fa fa-dashboard fa-fw"></i> 访问管理</a></li>
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side --> </nav>

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
							 <label for="customerName">文章题目:</label>
							 <input type="text" class="form-control" id="customerName" value="${custName }" name="custName">
						</div>
						<div class="form-group">
							<label for="custIndustry">所属分类</label> 
							<select class="form-control" id="custIndustry" name="custIndustry">
								<option value="">--请选择--</option>
								<c:forEach items="${industryType}" var="item">
									<option value="${item.dict_id}" <c:if test="${item.dict_id == custIndustry}"> selected</c:if> >
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
						<div class="panel-heading">客户信息列表</div>
						<!-- /.panel-heading -->
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>多选框</th>
									<th>文章标题</th>
									<th>文章类别</th>
									<th>文章作者</th>
									<th>发布时间</th>
									<th>查看人数</th>
									<th>点赞数</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${articleList}" var="articleList">
									<tr>
										<td><input type="checkbox" value="${articleList.articleId}"/></td>
										<td>${articleList.articleName}</td>
										<td>${articleList.category.categoryName}</td>
										<td>${articleList.articleAuthor}</td>
										<td>${articleList.publishTime}</td>
										<td>${articleList.articleView}</td>
										<td>${articleList.articleLove}</td>
										<td>
<%-- 										   <a href="edit/PreUpdate?articleId=${articleList.articleId}" class="btn btn-primary btn-xs" >修改</a>
 --%>										   
											 <a href="edit/updateEdit/${articleList.articleId}" class="btn btn-primary btn-xs" >修改</a>
											 <a href="#" class="btn btn-danger btn-xs" onclick="deleteEdit(${articleList.articleId})">删除</a>
										 </td>
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
		<!-- /#page-wrapper -->
	</div>

	<!-- jQuery -->
	<script src="<%=basePath%>static/js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<%=basePath%>static/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="<%=basePath%>static/js/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script src="<%=basePath%>static/js/jquery.dataTables.min.js"></script>
	<script src="<%=basePath%>static/js/dataTables.bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="<%=basePath%>static/js/sb-admin-2.js"></script>

	<script type="text/javascript">
		function editCustomer(id) {
			$.ajax({
				type:"get",
				url:"<%=basePath%>customer/edit.action",
				data:{"id":id},
				success:function(data) {
					$("#edit_cust_id").val(data.cust_id);
					$("#edit_customerName").val(data.cust_name);
					$("#edit_customerFrom").val(data.cust_source)
					$("#edit_custIndustry").val(data.cust_industry)
					$("#edit_custLevel").val(data.cust_level)
					$("#edit_linkMan").val(data.cust_linkman);
					$("#edit_phone").val(data.cust_phone);
					$("#edit_mobile").val(data.cust_mobile);
					$("#edit_zipcode").val(data.cust_zipcode);
					$("#edit_address").val(data.cust_address);
				}
			});
		}
		function updateCustomer() {
			$.post("<%=basePath%>customer/update.action",$("#edit_customer_form").serialize(),function(data){
				alert("客户信息更新成功！");
				window.location.reload();
			});
		}
		
		function deleteEdit(articleId) {
			 if(confirm('确实要删除这篇文章吗?')) {
				 $.ajax({
						type:"get",
						url:"<%=basePath%>edit/deleteEdit",
						data:{"articleId":articleId},
						success:function(data) {
							window.location.href='http://localhost:8080/mybolg/admin';	
						}
					});
			} 
		}
	</script>

</body>

</html>
