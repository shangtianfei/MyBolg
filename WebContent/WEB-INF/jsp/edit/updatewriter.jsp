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
	href="<%=basePath%>static/medit/css/editormd.min.css" />
<link rel="stylesheet"
	href="<%=basePath%>static/medit/examples/css/style.css" />
<!-- Bootstrap Core CSS -->
<link href="<%=basePath%>static/css/bootstrap.min.css" rel="stylesheet">
<link rel="shortcut icon"
	href="<%=basePath%>static/medit/images/logos/favicon.ico"
	type="image/x-icon" />
</head>
<body>
	<div id="layout" style="background: #f6f6f6;">
		<div class="btns">
			<button id="watch-btn">实时预览</button>
			<button id="unwatch-btn">纯编辑页面</button>
			<button id="preview-btn">HTML预览</button>
			<button id="fullscreen-btn">最大化</button>
			<button id="show-toolbar-btn">显示工具栏</button>
			<button id="close-toolbar-btn">隐藏工具栏</button>
			<button id="open-help-dialog">使用帮助</button>
		</div>
		<input type="hidden" id="article_id" value="${articleWithBLOBs.articleId }"/>
		<div class="col-xs-8">
			<input type="text" class="form-control" id="article_name"
				placeholder="输入题目..." value="${articleWithBLOBs.articleName }">
		</div>
		<div class="col-sm-2">
			<select class="form-control" id="category_id">
				<c:forEach items="${categoryList}" var="clist">
					<option value="${clist.categoryId}">${clist.categoryName }</option>
				</c:forEach>
			</select>
		</div>
		<button class="btn btn-primary" id="get-md-btn">发布更新</button>
		<div id="editormd">
					 <textarea style="display: none;">${articleWithBLOBs.articleContent }</textarea>
		</div>
		<script src="<%=basePath%>static/medit/examples/js/jquery.min.js"></script>
		<script src="<%=basePath%>static/medit/editormd.min.js"></script>
		<script type="text/javascript">
            var testEditor;            
            $(function() {
            	
                $.get("/mybolg/medie_md.jsp", function(md) {
                    testEditor = editormd("editormd", {
                        width                : "98%",
                        height               : 740,
                        path:"<%=basePath%>static/medit/lib/",
                    imageUpload : true,
                    imageFormats : ["jpg", "jpeg", "gif", "png", "bmp", "webp"],
                    imageUploadURL : "./php/upload.php?test=dfdf",/* 图片上传路径 */
					appendMarkdown : "\n" + md,
					saveHTMLToTextarea : true,
					watch : false,
					htmlDecode : true,
					toolbar : false,
					previewCodeHighlight : false,
					tex : true,
					flowChart : true,
					sequenceDiagram : true,
					emoji : true,
					taskList : true,
					onload : function() {
						console.log('onload', this);

						this.config("lineNumbers", false);

						this.config({
							toc : false,
							tex : false,
							toolbar : true,
							previewCodeHighlight : true, // before set previewCodeHighlight == false, editor not load pretty.js, so now codes can't highlight and display line numbers.
							flowChart : false,
							sequenceDiagram : false,
							dialogLockScreen : false,
							dialogMaskOpacity : 0.1, // 设置透明遮罩层的透明度，全局通用，默认值为0.1
							dialogDraggable : false,
							dialogMaskBgColor : "#000"
						});

						this.config("onresize", function() {
							console.log("onresize =>", this);
						});

						this.watch();
					}

				});
			});
                
             $("#close-toolbar-btn").keydown(function() {
                 testEditor.hideToolbar();
             });
                
			$("#show-btn").click(function() {
				testEditor.show();
			});

			$("#hide-btn").click(function() {
				testEditor.hide();
			});

			$("#get-md-btn").click(function() {
				$.ajax({
					type:"post",
					url:"<%=basePath%>edit/saveOrUpdate",
												data : {
													"article_content" : testEditor.getMarkdown(),
													"article_name" : $("#article_name").val(),
													"category_id" : $("#category_id").val(),
													"article_id":$("#article_id").val()
												},
												success : function(data) {
													window.location.href = 'http://localhost:8080/mybolg/admin';
												}
											});

								});

				$("#watch-btn").click(function() {
					testEditor.watch();
				});

				$("#unwatch-btn").click(function() {
					testEditor.unwatch();
				});

				$("#preview-btn").click(function() {
					testEditor.previewing();
				});

				$("#fullscreen-btn").click(function() {
					testEditor.fullscreen();
				});

				$("#show-toolbar-btn").click(function() {
					testEditor.showToolbar();
				});

				$("#close-toolbar-btn").click(function() {
					testEditor.hideToolbar();
				});

				$("#open-help-dialog").bind('click', function() {
					$.proxy(testEditor.toolbarHandlers.help, testEditor)();
				});
			});
		</script>

	</div>
</body>
</html>