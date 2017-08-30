<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@ page trimDirectiveWhitespaces='true'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN' 'http://www.w3.org/TR/html4/loose.dtd'>
<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8''>
<title>Insert title here</title>
<link href='<%=basePath%>static/css/bootstrap.min.css' rel='stylesheet'>
</head>
<body>
	<%@ include file='/WEB-INF/jsp/publicJsp/nav.jsp'%>
	<div class='container'>
		<div class='row clearfix'>
			<div class='col-md-9 column'>
				<%@ include file='/WEB-INF/jsp/publicJsp/imageTop.jsp'%>
				<%@ include file='/WEB-INF/jsp/publicJsp/previewCenter.jsp'%>
			</div>
			<div class='col-md-3 column'>
				<%@ include file='/WEB-INF/jsp/publicJsp/navRight.jsp'%>
			</div>
		</div>
	</div>
	<script src='<%=basePath%>static/js/jquery.min.js'></script>
	<!-- Bootstrap Core JavaScript -->
	<script src='<%=basePath%>static/js/bootstrap.min.js'></script>
	<!-- DataTables JavaScript -->
	<script src='<%=basePath%>static/js/jquery.dataTables.min.js'></script>
	<script src='<%=basePath%>static/js/dataTables.bootstrap.min.js'></script>
	<script type='text/javascript'>
	function categoryShow(category_id,category_name){
		  $.ajax({
				type:'post',
				url:'<%=basePath%>category/selectByCategoryId',
				data : {
					'category_id':category_id
				},
				dataType:'json',
				success : function(data) {
					 $('#articleListDiv').html('');//清除articleListDiv
					var aList = data;
					  if (aList.length == 0) {
						 var articleNotFound = "<div class='panel panel-info'><div class='panel-heading'><h3 class='panel-title'>不存在的</h3></div><div class='panel-body'><h3>"+category_name+"</h3>类下没有文章</div></div>";
						 $('#articleListDiv').append(articleNotFound);
					}  
					 $('#articleListDiv').append("<div>类别:<b>"+aList[0].category.category_name+"</b>("+aList.length+")</div>");
					 $.each(aList, function(index, articleList){
                    var categoryForEach = "<div class='panel panel-default'><div class='panel-body'><h3><a href='<%=basePath%>selectByPrimaryKey/"
														+ articleList.article_id
														+ " ' title='"
														+ articleList.article_name
														+ "'>"
														+ articleList.article_name
														+ "</a><small><em ><span  class='label label-primary'>"+articleList.category.category_name+"</span></em></small></h3><p>"
														+ articleList.article_thumb
														+ "</p><p align='right'><span class='glyphicon glyphicon-user'>:<a  href='#' title='作者"+articleList.userinfo.username+"'>"
														+ articleList.userinfo.username
														+ "</a></span>&ensp;<span class='glyphicon glyphicon-thumbs-up'>:<a  href='#' title='为我点赞'>"
														+ articleList.article_love
														+ "</a></span>&ensp;<span class='glyphicon glyphicon-eye-open'>:<a  href='#' title='有"+articleList.article_view+"人阅读这篇文章'>"
														+ articleList.article_view
														+ "</a></span>&ensp;</p></div></div>";
												$('#articleListDiv').append(
														categoryForEach);
											});
						}
					});
		};
	</script>
</body>
</html>
