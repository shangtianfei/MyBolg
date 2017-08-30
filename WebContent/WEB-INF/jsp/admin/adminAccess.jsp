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

<body>

	<div id="wrapper">
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0"> <%@ include
			file='/WEB-INF/jsp/admin/publicAdmin/adminShowUpperLeft.jsp'%>
		<%@ include
			file='/WEB-INF/jsp/admin/publicAdmin/adminShowUpperRight.jsp'%>
		<%@ include file='/WEB-INF/jsp/admin/publicAdmin/adminShowLeft.jsp'%>
		</nav>
		<%@ include file='/WEB-INF/jsp/admin/publicAdmin/accessList.jsp'%>
		<%@ include file='/WEB-INF/jsp/admin/publicAdmin/adminShowModal.jsp'%>
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
		function deleteEdit(article_id) {
			 if(confirm('确实要删除这篇文章吗?')) {
				    document.getElementById( article_id+"ArticleTr").style.display= "none "; /* 隐藏tr */
				    $.ajax({
						type:"get",
						url:"<%=basePath%>edit/deleteEdit",
						data:{"article_id":article_id},
						success:function(data) {
							alert("已删除文章！");
							window.location.reload();
						}
					}); 
			} 
		};
		function deleteCategory(category_id) {
				document.getElementById( category_id+"CategoryTr").style.display= "none "; /* 隐藏tr */
			    $.ajax({
					type:"get",
					url:"<%=basePath%>category/deleteCategory",
					data:{"category_id":category_id},
					success:function(data) {
						window.location.reload();
					}
				});  
		};
		$("#addTag").click(function() {
			$.ajax({
				type:"post",
				url:"<%=basePath%>category/add",
				data : {
					"category_name" : $("#category_name").val()
				},
				success : function(data) {
					 $("#categoryDiv").empty();//清除categoryDiv里面的数据
					var categoryList = data;
					$.each(categoryList, function(index, clist){
						var trtForEach = "<tr id='"+clist.category_id+"CategoryTr'> <td align='center'><span id='"+clist.category_id+"'>"+clist.category_name+"<span></td><td align='center'><div id='"+clist.category_id+"butDiv' class='btn-group btn-group-sm' role='group' ><a onclick='preUpdateCategory("+clist.category_id+")' class='btn btn-default'>修改</a> <a href='#'class='btn btn-primary'onclick='deleteCategory("+clist.category_id+")'>删除</a></div></td></tr>";
						$("#categoryDiv").append(trtForEach);
					});
					$('#preAddTag').modal('hide')
				}
			});
		});
		
		function preUpdateCategory(id) {
			$("#"+id+"").html("<input type='text' id='"+id+"inputValue'  class='form-control' size='3' value='"+$("#"+id+"").text()+"'/>");
			$("#"+id+"butDiv").html("<button onclick='updateCategory("+id+")' class='btn btn-primary'>保存</button>");
		};
		
		function updateCategory(updateId) {
			$.ajax({
				type:"post",
				url:"<%=basePath%>category/update",
				data : {
					"category_id":updateId,
					"category_name" : $("#"+updateId+"inputValue").val()
				},
				success : function(data) {
					 $("#categoryDiv").empty();//清除categoryDiv里面的数据
					var categoryList = data;
					$.each(categoryList, function(index, clist){
						var trtForEach = "<tr id='"+clist.category_id+"CategoryTr'> <td align='center'><span id='"+clist.category_id+"'>"+clist.category_name+"<span></td><td align='center'><div id='"+clist.category_id+"butDiv' class='btn-group btn-group-sm' role='group' ><a onclick='preUpdateCategory("+clist.category_id+")' class='btn btn-default'>修改</a> <a href='#'class='btn btn-primary'onclick='deleteCategory("+clist.category_id+")'>删除</a></div></td></tr>";
						$("#categoryDiv").append(trtForEach);
					});
				}
			});
		}
	</script>

</body>

</html>
