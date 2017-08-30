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
<link rel="stylesheet"
	href="<%=basePath%>static/medit/css/editormd.preview.css" />
<link rel="stylesheet"
	href="<%=basePath%>static/medit/examples/css/style.css" />
<link href="<%=basePath%>static/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
	<%@ include file='/WEB-INF/jsp/publicJsp/nav.jsp'%>
	<div class='container'>
		<div class='row clearfix'>
			<div class='col-md-12 column'>
				<div class='row clearfix'>
					<div class='col-md-1 column' align="left"></div>
					<div class='col-md-8 column' id="articleListDiv" align="left">
						<%@ include
							file='/WEB-INF/jsp/publicJsp/independentViewCenter.jsp'%>
						<%@ include
							file='/WEB-INF/jsp/publicJsp/independentPageNextOrUp.jsp'%>
						<%@ include file='/WEB-INF/jsp/publicJsp/independentMessage.jsp'%>
					</div>
					<div class='col-md-3 column' align="left">
						<%@ include file='/WEB-INF/jsp/publicJsp/navRight.jsp'%>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- <script src="js/zepto.min.js"></script>
		<script>		
			var jQuery = Zepto;  // 为了避免修改flowChart.js和sequence-diagram.js的源码，所以使用Zepto.js时想支持flowChart/sequenceDiagram就得加上这一句
		</script> -->
	<script src="<%=basePath%>static/medit/examples/js/jquery.min.js"></script>
	<script src="<%=basePath%>static/medit/lib/marked.min.js"></script>
	<script src="<%=basePath%>static/medit/lib/prettify.min.js"></script>

	<script src="<%=basePath%>static/medit/lib/raphael.min.js"></script>
	<script src="<%=basePath%>static/medit/lib/underscore.min.js"></script>
	<script src="<%=basePath%>static/medit/lib/sequence-diagram.min.js"></script>
	<script src="<%=basePath%>static/medit/lib/flowchart.min.js"></script>
	<script src="<%=basePath%>static/medit/lib/jquery.flowchart.min.js"></script>

	<script src="<%=basePath%>static/medit/editormd.js"></script>
	<script src="<%=basePath%>static/js/bootstrap.min.js"></script>
	<!-- layer.js的路径 -->
	<script src="<%=basePath%>static/layer/layer.js"></script>
	<script type="text/javascript">
		$(function() {
			var testEditormdView, testEditormdView2;

			$.get("<%=basePath%>medie_md.jsp", function(markdown) {

				testEditormdView = editormd.markdownToHTML(
						"test-editormd-view", {
							markdown : markdown,//+ "\r\n" + $("#append-test").text(),
							//htmlDecode      : true,       // 开启 HTML 标签解析，为了安全性，默认不开启
							htmlDecode : "style,script,iframe", // you can filter tags decode
							//toc             : false,
							tocm : true, // Using [TOCM]
							//tocContainer    : "#custom-toc-container", // 自定义 ToC 容器层
							//gfm             : false,
							//tocDropdown     : true,
							// markdownSourceCode : true, // 是否保留 Markdown 源码，即是否删除保存源码的 Textarea 标签
							emoji : true,
							taskList : true,
							tex : true, // 默认不解析
							flowChart : true, // 默认不解析
							sequenceDiagram : true, // 默认不解析
						});

				//console.log("返回一个 jQuery 实例 =>", testEditormdView);

				// 获取Markdown源码
				//console.log(testEditormdView.getMarkdown());

				//alert(testEditormdView.getMarkdown());
			});

			testEditormdView2 = editormd.markdownToHTML("test-editormd-view2",
					{
						htmlDecode : "style,script,iframe", // you can filter tags decode
						emoji : true,
						taskList : true,
						tex : true, // 默认不解析
						flowChart : true, // 默认不解析
						sequenceDiagram : true, // 默认不解析
					});
		});
	</script>
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
		function commentSubmit() {
			$.ajax({
				type:"post",
				url:"<%=basePath%>comment/commentSubmit",
					data : $('#fromComment').serialize(),
					success : function(data) {
						layer.msg('恭喜你提交成功(ps:你的评论经管理员审核后就会显示在评论区哦)');
					}
				});
			};
		</script>
</body>
</html>