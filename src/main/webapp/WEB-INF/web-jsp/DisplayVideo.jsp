<%@ page language="java" contentType="text/html; charset=UTF-8"
			   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/static/Homepage/video/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/static/Homepage/video/dashboard.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/static/Homepage/video/style.css">


<script
	src="<%=request.getContextPath()%>/static/Homepage/js/jquery.min.js"></script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>课后-视频结果</title>
</head>

	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/static/Homepage/css/style.css">
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/static/Homepage/css/example.css">
	<script
		src="<%=request.getContextPath()%>/static/Homepage/js/sHover.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/static/Homepage/js/jquery.min.js"></script>

<link href="<%=request.getContextPath()%>/static/listPage/css/list_page.css" rel="stylesheet" type="text/css" />
	<link
		href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css"
		rel="stylesheet">


	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/static/Homepage/video/bootstrap.min.css">
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/static/Homepage/video/dashboard.css">
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/static/Homepage/video/style.css">

	<!-- 联系我们css js jq -->
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/static/cebianlan/css/style.css">
	<script
		src="<%=request.getContextPath()%>/static/cebianlan/js/index.js"></script>
	<script src="<%=request.getContextPath()%>/static/cebianlan/js/jq22.js"></script>
	<script
		src="<%=request.getContextPath()%>/static/cebianlan/js/jquery-1.10.2.min.js"></script>
</head>

<body>


	<div class="diyoumask" style="height: 2000px;"></div>

	<script type="text/javascript">
$(function() {
	$(".contactusdiyou").hover(function() {
		$(".hoverimg").attr("src","images/hoverbtnbg1.gif");
		$('.diyoumask').fadeIn();
		$('.contactusdiyou').animate({right:'0'},300); 
	}, function() {
		$(".hoverimg").attr("src","images/hoverbtnbg.gif");
		$('.contactusdiyou').animate({right:'-230px'},300,function(){});
		$('.diyoumask').fadeOut();
	});
});
</script>





	<!-- 上方是导航栏 -->
	<div style="background-color: #6C89B2; margin-top: 0px">
		<div class="header-top__nav" style="float: left">
			<ul>
				<li class="item item-home"><a href="index.sf">首页</a></li>
			</ul>
		</div>
		<div style="margin-left: 90%;">

			<%
				if (request.getSession().getAttribute("userName") == null) {
			%>
			<button class="btn btn-primary ladda-button" data-style="expand-left"
				id="login">
				<span class="ladda-label"><a href="login.sf"
					style="font-size: 10px; color: white; text-decoration: none">登录</a></span>
			</button>

			<button class="btn btn-primary ladda-button" data-style="expand-left"
				id="zhuce">
				<span class="ladda-label"><a href="zhuce.sf"
					style="font-size: 10px; color: white; text-decoration: none">注册</a></span>
			</button>
			<%
				} else {
			%>


			<button class="btn btn-primary ladda-button" data-style="expand-left"
				id="userxinxi">
				<span class="ladda-label"><a href="User_full_information.sf"
					style="font-size: 10px; color: white; text-decoration: none">
						欢迎你的登录: <span style="color: red"><%=request.getSession().getAttribute("userName")%></span>
				</a></span>
			</button>


			<%
				}
			%>
		</div>
		<script type="text/javascript">
$(document).ready(function(){
	$("#userxinxi").click(function(){
		location.href="User_full_information.sf";
		
	});
	$("#login").click(function(){
		location.href="login.sf";
	});
	$("#zhuce").click(function(){
		location.href="zhuce.sf";
	});
});
</script>
	</div>
	<div>
		<img
			src="<%=request.getContextPath()%>/static/bilibiliIndex/images/header_bg.jpg"
			style="width: 100%;" />

	</div>

	<style type="text/css">
body {
	font: normal 100% 'Arial', 'Helvetica', 'Verdana', sans-serif;
	color: #CECECE;
}

p {
	padding: 12px 0;
	margin: 0;
	font-size: .8em;
	line-height: 1.5;
}

form {
	margin: 0;
}

#search_box {
	width: 201px;
	height: 32px;
	background: url(http://files.jb51.net/demoimg/200912/bg_search_box.gif);
}

#search_box #s {
	float: left;
	padding: 0;
	margin: 6px 0 0 6px;
	border: 0;
	width: 159px;
	background: none;
	font-size: .8em;
}

#search_box #go {
	float: right;
	margin: 3px 4px 0 0;
}
</style>
	<!--筛选-->
	<div class="filter_style">
		<div class="selectNumberScreen">
			<div class="hasBeenSelected">
				<dl>
					<dt>结果 </dt>
				</dl>
			</div>
			<div id="selectList" class="screenBox screenBackground">
				<dl class="listIndex">
					<dt class="l_f">学科：</dt>
					<dd>
						<a href="javascript:void(0)" values2="" values1=""  class="selected">全部</a>
						<a href="javascript:void(0)" values2="" values1="" >自然科学类</a>
						<a href="javascript:void(0)" values2="" values1="" >农业科学类</a>
						<a href="javascript:void(0)" values2="" values1="" >医药科学类</a>
						<a href="javascript:void(0)" values2="" values1="" >工程与技术科学类</a>
						<a href="javascript:void(0)" values2="" values1="" >人文与社会科学类</a>
					</dd>
				</dl>
				<dl class="listIndex">
					<dt class="l_f">排序：</dt>
					<dd>
						<a href="javascript:void(0)" values2="" values1="" class="selected">全部</a>
						<a href="javascript:void(0)" values2="" values1="">发布时间</a>
						<a href="javascript:void(0)" values2="" values1="">点击量</a>
						<a href="javascript:void(0)" values2="" values1="">评论数</a>
						<a href="javascript:void(0)" values2="" values1="">收藏数</a>

					</dd>
				</dl>
				<dl class="listIndex">
					<dt class="l_f">时长：</dt>
					<dd>
						<a href="javascript:void(0)" values2="" values1="" class="selected">全部</a>
						<a href="javascript:void(0)" values2="" values1="">10分钟</a>
						<a href="javascript:void(0)" values2="" values1="">10-30分钟</a>
						<a href="javascript:void(0)" values2="" values1="">30-60分钟</a>
						<a href="javascript:void(0)" values2="" values1="">1小时以上</a>
					</dd>
				</dl>
			</div>
		</div>
		<!---->
		<div class="container_style ">
			<div class="tab_box" id="sort_btn_wrap">
				<a href="javascript:" class="hover">全部</a>
			</div>
		</div>
	</div>

	<div id="test"></div>
	<div align="center" style="color: red">
		<b>共计:<%=request.getAttribute("tag1")%>条记录
		</b> <b id="page"></b>
	</div>
	<div align="center" style="color: black">
		<button type="button" id="shou">首页</button>
		&nbsp;
		<button type="button" id="up">上一页</button>
		&nbsp;
		<button type="button" id="next">下一页</button>
		&nbsp;
		<button type="button" id="wei">尾页</button>
		&nbsp;<input type="text" id="text"
			onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this)"
			onblur="this.v();" style="width: 80px; height: 22px"></input> &nbsp;
		<button type="button" id="tiaozhuan">跳转</button>
	</div>

	<script type="text/javascript">
					//得到标记为1的视频总数
					var tag1=<%=request.getAttribute("tag1")%>;
<%-- 					//得到标记为2的视频总数
					var tag2=<%=request.getAttribute("tag2")%>;
					//得到标记为3的视频总数
					var tag3=<%=request.getAttribute("tag3")%>; --%>
					//每页显示多少个
					var tag4=<%=request.getAttribute("tag4")%>;
					
					
			var dangqianye = 0;//页面加载时 默认当前页为 0
			//需要查询的标记 标记为1 2 3
			var State = 1;
			//页面当前页
			var page = 1;
			var html = "";
					</script>
	<script src="<%=request.getContextPath()%>/static/adminjs/liebiao.js"></script>
	</div>
	<div class="clearfix"></div>
	</div>
	</div>
	</div>

	<div class="clearfix"></div>
	</div>

</body>
</html>