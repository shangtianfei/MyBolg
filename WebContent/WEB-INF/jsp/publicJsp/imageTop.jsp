<%@page pageEncoding="UTF-8"%><!-- 规定字符编码 -->
<%
	String topImagePath = request.getContextPath();
	String topImageBasePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ topImagePath + "/";
%>
<html>
<body>
	<div class='carousel slide' id='carousel-472859'>
		<ol class='carousel-indicators'>
			<li data-slide-to='0' data-target='#carousel-472859'></li>
			<li data-slide-to='1' data-target='#carousel-472859'></li>
			<li data-slide-to='2' data-target='#carousel-472859' class='active'></li>
		</ol>
		<div class='carousel-inner'>
			<div class='item'>
				<img alt='' src='<%=topImageBasePath%>static/v3/default.jpg' />
				<div class='carousel-caption'>
					<h4>First Thumbnail label</h4>
					<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.
						Donec id elit non mi porta gravida at eget metus. Nullam id dolor
						id nibh ultricies vehicula ut id elit.</p>
				</div>
			</div>
			<div class='item'>
				<img alt='' src='<%=topImageBasePath%>static/v3/default1.jpg' />
				<div class='carousel-caption'>
					<h4>Second Thumbnail label</h4>
					<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.
						Donec id elit non mi porta gravida at eget metus. Nullam id dolor
						id nibh ultricies vehicula ut id elit.</p>
				</div>
			</div>
			<div class='item active'>
				<img alt='' src='<%=topImageBasePath%>static/v3/default2.jpg' />
				<div class='carousel-caption'>
					<h4>Third Thumbnail label</h4>
					<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam.
						Donec id elit non mi porta gravida at eget metus. Nullam id dolor
						id nibh ultricies vehicula ut id elit.</p>
				</div>
			</div>
		</div>
		<a class='left carousel-control' href='#carousel-472859'
			data-slide='prev'><span class='glyphicon glyphicon-chevron-left'></span></a>
		<a class='right carousel-control' href='#carousel-472859'
			data-slide='next'><span class='glyphicon glyphicon-chevron-right'></span></a>
	</div>
	<br />
</body>
</html>