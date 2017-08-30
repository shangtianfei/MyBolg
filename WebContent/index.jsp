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
<script type="text/javascript">
	 window.location.href ="<%=basePath%>index"; 
</script>
<script src="http://lib.sinaapp.com/js/jquery/1.9.1/jquery-1.9.1.min.js"></script>
<script src="<%=basePath%>static/js/jrender.js"></script>
</head>
<body>
	<a href="<%=basePath%>index">首页</a>
	<!-- <div class="info">
		<img render-src="imageIcon"> <span render-html="weather"></span>
		<ul render-loop="seven_days">
			<li><span render-fun="get_weather" render-key="seven_days.weather"></span>
				<ul render-loop="seven_days.test">
					<li render-html="seven_days.test.haha"></li>
				</ul>
			</li>
		</ul>
		<span render-attr="userid=uid" render-html="weather"></span>
	</div>
	<script>
    var data = {
        weather: '晴',
        imageIcon: 'http://img.tianqi.com/static/images/tianqibig/b1.png',
        seven_days: [
            {
                weather: '阴',
                test: [
                    {
                        'haha': '嘿嘿'
                    },
                    {
                        'haha': '嘿嘿2'
                    },
                    {
                        'haha': '嘿嘿3'
                    }
                ]
            },
            {
                weather: '雾霾',
                test: [
                    {
                        'haha': '嘿嘿4'
                    },
                    {
                        'haha': '嘿嘿5'
                    },
                    {
                        'haha': '嘿嘿6'
                    }
                ]
            },
            {
                weather: '小雨',
                test: [
                    {
                        'haha': '嘿嘿7'
                    },
                    {
                        'haha': '嘿嘿8'
                    },
                    {
                        'haha': '嘿嘿9'
                    }
                ]
            }
        ],
        uid: 1987
    };
    $(".info").renderValues(data,{
        'get_weather':function(item,value) {
            $(item).html(value+1);
        }
    });
</script> -->
	<div class="info">
		<span render-html="weather"></span>
		<ul render-loop="seven_days">
			<li render-html="seven_days.weather"></li>
		</ul>
	</div>
	<script type="text/javascript">
var data = {
	    weather:'sunshine',
	    seven_days:[
	        {
	            weather:'windy'
	        },
	        {
	            weather:'rainy'
	        },
	        {
	            weather:'cloud'
	        }
	    ]
	};
	$(".info").renderValues(data);
</script>
</body>
</body>
</html>