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
<title>Insert title here</title>
<link href="<%=basePath%>static/css/bootstrap.min.css" rel="stylesheet">
<!-- MetisMenu CSS -->
<link href="<%=basePath%>static/css/metisMenu.min.css" rel="stylesheet">
<!-- DataTables CSS -->
<link href="<%=basePath%>static/css/dataTables.bootstrap.css"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="<%=basePath%>static/css/sb-admin-2.css" rel="stylesheet">
<!-- Custom Fonts -->
<link href="<%=basePath%>static/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="<%=basePath%>static/css/boot-crm.css" rel="stylesheet"
	type="text/css">
</head>
<<<<<<< HEAD
<body>
	<!-- <a href="admin">后台</a>
	<hr /> -->
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<nav class="navbar navbar-default navbar-inverse" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span><span
							class="icon-bar"></span><span class="icon-bar"></span><span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Brand</a>
				</div>

				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Link</a></li>
						<li><a href="#">Link</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li class="divider"></li>
								<li><a href="#">Separated link</a></li>
								<li class="divider"></li>
								<li><a href="#">One more separated link</a></li>
							</ul></li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search"/>
						</div>
						<button type="submit" class="btn btn-default">Submit</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="admin">后台</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Dropdown<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li class="divider"></li>
								<li><a href="#">Separated link</a></li>
							</ul></li>
					</ul>
				</div>

				</nav>
=======
<body> 
<jsp:include page="/WEB-INF/jsp/nav.jsp"></jsp:include>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
>>>>>>> 2017_8_6_2
				<div class="row clearfix">
					<div class="col-md-2 column">
						<address>
							<strong>Twitter, Inc.</strong><br /> 795 Folsom Ave, Suite 600<br />
							San Francisco, CA 94107<br /> <abbr title="Phone">P:</abbr>
							(123) 456-7890
						</address>
					</div>
					<div class="col-md-7 column">
						<div class="carousel slide" id="carousel-472859">
							<ol class="carousel-indicators">
								<li data-slide-to="0" data-target="#carousel-472859"></li>
								<li data-slide-to="1" data-target="#carousel-472859"></li>
								<li data-slide-to="2" data-target="#carousel-472859"
									class="active"></li>
							</ol>
							<div class="carousel-inner">
								<div class="item">
									<img alt="" src="<%=basePath%>static/v3/default.jpg" />
									<div class="carousel-caption">
										<h4>First Thumbnail label</h4>
										<p>Cras justo odio, dapibus ac facilisis in, egestas eget
											quam. Donec id elit non mi porta gravida at eget metus.
											Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
									</div>
								</div>
								<div class="item">
									<img alt="" src="<%=basePath%>static/v3/default1.jpg" />
									<div class="carousel-caption">
										<h4>Second Thumbnail label</h4>
										<p>Cras justo odio, dapibus ac facilisis in, egestas eget
											quam. Donec id elit non mi porta gravida at eget metus.
											Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
									</div>
								</div>
								<div class="item active">
									<img alt="" src="<%=basePath%>static/v3/default2.jpg" />
									<div class="carousel-caption">
										<h4>Third Thumbnail label</h4>
										<p>Cras justo odio, dapibus ac facilisis in, egestas eget
											quam. Donec id elit non mi porta gravida at eget metus.
											Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
									</div>
								</div>
							</div>
							<a class="left carousel-control" href="#carousel-472859"
								data-slide="prev"><span
								class="glyphicon glyphicon-chevron-left"></span></a> <a
								class="right carousel-control" href="#carousel-472859"
								data-slide="next"><span
								class="glyphicon glyphicon-chevron-right"></span></a>
						</div>
						<c:forEach items="${articleList}" var="articleList">
						<div>
							<h3><a href="<%=basePath%>selectByPrimaryKey/${articleList.articleId }">${articleList.articleName }</a></h3>
							<p>Donec id elit non mi porta gravida at eget metus. Fusce
								dapibus, tellus ac cursus commodo, tortor mauris condimentum
								nibh, ut fermentum massa justo sit amet risus. Etiam porta sem
								malesuada magna mollis euismod. Donec sed odio dui.</p>
							<p align="right">
								作者:<a  href="#">${articleList.articleAuthor }</a>
							    点赞数:<a  href="#">${articleList.articleLove }</a>
					  		    阅读数:<a  href="#">${articleList.articleView }</a>
							</p>
							<hr />
						</div>
						</c:forEach>
					</div>
					<div class="col-md-3 column">
						<div class="row clearfix">
							<div class="col-md-12 column">
								<h2 >友情链接</h2>
									<a class="btn" href="http://www.runoob.com/">View details »</a>
									<a class="btn" href="http://www.runoob.com/">View details »</a>
									<a class="btn" href="http://www.runoob.com/">View details »</a>
									<a class="btn" href="http://www.runoob.com/">View details »</a>
							</div>
						</div>
						<div class="row clearfix">
							<div class="col-md-12 column">
							         <h3>类别</h3>
								<ul class="list-inline">
								<c:forEach items="${categoryList}" var="categoryList">
								   <li><a  href="${categoryList.categoryId }">${categoryList.categoryName } </a></li>
								</c:forEach>
								</ul>
							</div>
						</div>
						<div class="row clearfix">
							<div class="col-md-12 column">
								<h2 >友情链接</h2>
									<a class="btn" href="http://www.runoob.com/">View details »</a>
									<a class="btn" href="http://www.runoob.com/">View details »</a>
									<a class="btn" href="http://www.runoob.com/">View details »</a>
									<a class="btn" href="http://www.runoob.com/">View details »</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
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
</body>
</html>