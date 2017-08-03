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

</head>
<body>
	<a href="admin">后台</a>
	<hr />
	<div align="center">
		<div id="layout" style="width: 70%;">
			<div id="test-editormd-view2">
				<textarea id="append-test" style="display: none;">

###科学公式 TeX(KaTeX)
                    
$$E=mc^2$$

行内的公式$$E=mc^2$$行内的公式，行内的$$E=mc^2$$公式。

$$\(\sqrt{3x-1}+(1+x)^2\)$$
                    
$$\sin(\alpha)^{\theta}=\sum_{i=0}^{n}(x^i + \cos(f))$$

$$X^2 > Y$$

#####上标和下标

上标：X&lt;sup&gt;2&lt;/sup&gt;

下标：O&lt;sub&gt;2&lt;/sub&gt;

##### 代码块里包含的过滤标签及属性不会被过滤

```html
&lt;style type="text/style"&gt;
body{background:red;}
&lt;/style&gt;

&lt;script type="text/javscript"&gt;
alert("script");
&lt;/script&gt;

&lt;iframe height=498 width=510 src="http://player.youku.com/embed/XMzA0MzIwMDgw" frameborder=0 allowfullscreen&gt;&lt;/iframe&gt;
```

#####Style

&lt;style&gt;
body{background:red;}
&lt;/style&gt;

&lt;style type="text/style"&gt;
body{background:red;}
&lt;/style&gt;

#####Script

&lt;script&gt;
alert("script");
&lt;/script&gt;

&lt;script type="text/javscript"&gt;
alert("script");
&lt;/script&gt;</textarea>
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
	<script type="text/javascript">
		$(function() {
			var testEditormdView, testEditormdView2;

			$.get("medie_md.jsp", function(markdown) {

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
</body>
</body>
</html>