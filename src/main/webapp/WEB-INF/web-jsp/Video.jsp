<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Video 1</title>
<base href="<%=basePath%>">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/Homepage/videoPlay/css/fz-video.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/Homepage/video/css/fz-video.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/Homepage/videoPlay/font/iconfont.css">
    <%--<link rel="stylesheet" href="<%=request.getContextPath()%>/static/Homepage/video/css/bootstrap.min.css">--%>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/Homepage/video/css/dashboard.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/static/Homepage/video/css/popuo-box.css">

    <link href="<%=request.getContextPath()%>/static/Homepage/css/style.css" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath()%>/static/Homepage/css/ddsmoothmenu.css" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath()%>/static/Homepage/css/scrollbar.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/Homepage/js/jquery.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/Homepage/js/ddsmoothmenu.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/Homepage/js/menu.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/Homepage/js/contentslider.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/Homepage/js/jquery.1.4.2.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/Homepage/js/jquery.lint.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/Homepage/js/jquery.scroll.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/Homepage/js/scroll.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/Homepage/js/jquery.idTabs.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/Homepage/js/switch.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/Homepage/js/tabs.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/Homepage/js/cufon-yui.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/Homepage/js/cufon.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/static/Homepage/js/Myriad_Pro_400-Myriad_Pro_700-Myriad_Pro_italic_400-Myriad_Pro_italic_700.font.js"></script>
<!--[if lte IE 7]><style>.comments .commentlinks{margin-left:250px;}
.comments .singlebtn{margin-left:380px;}
.comments ul li:hover .commentlinks{display:inline-block;}
.comments ul li.level2:hover .commentlinks{margin-left:210px;}
.comments ul li.level2:hover .singlebtn{margin-left:340px;}
</style><![endif]-->
</head>
<body class="bg2">
<span class="smalllines">&nbsp;</span>
<!-- Wrapper -->
<div id="wrapper_sec">
    <div class="clear"></div>

    <div id="content_sec">
    	<!-- Bread Crumb -->
        <div id="crumb">
        	<h5>当前</h5>
            <ul>
                <li><a href="#">首页</a></li>
            	<li class="last"><a href="#">计算机</a></li>
            </ul>
        </div>
    	<!-- Column 1 -->
        <div class="col1" style="float : left;">
            <!-- Video Heading -->
            <div class="allvideos_heading">
            	<h1>视频标题</h1>
                <p class="txt">(序号)</p>
            </div>
            <div class="clear"></div>
            <!-- Video Detail -->
            <div class="videodetail">
            	<!-- Short Detail -->
                <div class="shortdetail">
                	<div class="videoby">
                    	<a href="#" class="videoavatar"><img src="images/videoby.gif" alt="" /></a>
                        <p>By</p>
                        <a href="#" class="bold name">蓝老师</a>
                    </div>
                    <div class="videodate">January 11, 2011 8:17 AM PST</div>
                    <div class="subscribe"><a href="#">订阅</a></div>
                    <div class="videoviews"><p>1,38 次播放</p></div>
                </div>
                <div class="clear"></div>
                <!-- Big Video -->
                <div id="testBox" class="videobig">
                    <script
                            src="<%=request.getContextPath()%>/static/Homepage/videoPlay/js/fz-video.js"></script>
                    <script>

                        var FZ_VIDEO = new createVideo("testBox", //容器的id
                            {

                                url : '<%=request.getAttribute("dizhi")%>', //视频地址
                                autoplay : true
                                //是否自动播放
                            });
                    </script>
                </div>
                <div class="clear"></div>
                <!-- Video tabs -->
                <div class="videotabs">
                	<div class="tabbuttons">
                        <ul class="likedilike">
                            <li><a href="#" class="like">赞</a></li>
                            <li><a href="#" class="dislike">踩</a></li>
                        </ul>
                        <ul class="tablinksselected">
                            <li><a href="#"><span class="sharebtn">分享</span></a></li>
                        </ul>
                        <ul class="tablinks">
                            <li><a href="#"><span class="embed">Embed</span></a></li>
                        </ul>
                        <ul class="tablinks">
                            <li><a href="#"><span class="addto">收藏</span><span class="downarrow">&nbsp;</span></a></li>
                        </ul>
                    </div>
                    <div class="clear"></div>
                    <div class="tabcont">
                    	<input type="text" value="" name="s" class="chain" id="sharelink" />
                        <script>
                            document.getElementById("sharelink").value =  window.location.href;
                        </script>
                        <input type="text" value="200" name="s" class="chrome" />
                        <input type="text" value="1001" name="s" class="facebook1" />
                        <input type="text" value="2000" name="s" class="twitter1" />
                        <div class="clear"></div>
                        <div class="shareicons">
                            <a href="#" class="icons"><img src="images/icon1.gif" alt="" /></a>
                            <a href="#" class="icons"><img src="images/icon2.gif" alt="" /></a>
                            <a href="#" class="icons"><img src="images/icon3.gif" alt="" /></a>
                            <a href="#" class="icons"><img src="images/icon4.gif" alt="" /></a>
                            <a href="#" class="icons"><img src="images/icon5.gif" alt="" /></a>
                            <a href="#" class="icons"><img src="images/icon6.gif" alt="" /></a>
                        </div>
                    </div>
                </div>
                <!-- Comments -->
                <div class="comments">
                	<h2 class="heading">477 comments</h2>
                    <textarea name="" cols="" rows=""></textarea>
                    <p class="characters">500 characters remaining</p>
                    <ul class="textareasubmission">
                    	<li class="txt"><a href="#">Cancel</a> or</li>
                        <li><a href="#" class="post">Post</a></li>
                        <li class="txt"><a href="#" class="attachment">Attach a video </a></li>
                    </ul>
                    <ul class="commentslist">
                    	<li class="level1">
                        	<div class="thumb">
                            	<a href="#"><img src="images/comments1.gif" alt="" /></a>
                            </div>
                            <div class="desc">
                            	<div class="commentlinks">
                                    <a href="#" class="reply">Reply</a>
                                    <a href="#" class="like">Like</a>
                                	<a href="#" class="dislike">Dislike</a>
                                </div>
                            	<h5><a href="#" class="colr">By MySebbb:</a></h5>
                                <p class="time">7 months ago</p>
                                <div class="clear"></div>
                                <p class="txt">
                                	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed elit. Nulla sem risus, vestibulum in, volutpat eget, dapibus ac, lectus. Curabitur dolor sapien.
                                </p>
                            </div>
                        </li>
                        <li class="level1">
                        	<div class="thumb">
                            	<a href="#"><img src="images/comments2.gif" alt="" /></a>
                            </div>
                            <div class="desc">
                            	<div class="commentlinks">
                                    <a href="#" class="reply">Reply</a>
                                    <a href="#" class="like">Like</a>
                                	<a href="#" class="dislike">Dislike</a>
                                </div>
                            	<h5><a href="#" class="colr">By MySebbb:</a></h5>
                                <p class="time">7 months ago</p>
                                <div class="clear"></div>
                                <p class="txt">
                                	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed elit. Nulla sem risus, vestibulum in, volutpat eget, dapibus ac, lectus. Curabitur dolor sapien.
                                </p>
                            </div>
                        </li>
                        <li class="level1">
                        	<div class="thumb">
                            	<a href="#"><img src="images/comments3.gif" alt="" /></a>
                            </div>
                            <div class="desc">
                            	<div class="commentlinks">
                                    <a href="#" class="reply">Reply</a>
                                    <a href="#" class="like">Like</a>
                                	<a href="#" class="dislike">Dislike</a>
                                </div>
                            	<h5><a href="#" class="colr">By MySebbb:</a></h5>
                                <p class="time">7 months ago</p>
                                <div class="clear"></div>
                                <p class="txt">
                                	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed elit. Nulla sem risus, vestibulum in, volutpat eget, dapibus ac, lectus. Curabitur dolor sapien.
                                </p>
                            </div>
                        </li>
                        <li class="level1">
                        	<div class="thumb">
                            	<a href="#"><img src="images/comments4.gif" alt="" /></a>
                            </div>
                            <div class="desc">
                            	<div class="commentlinks">
                                    <a href="#" class="reply">Reply</a>
                                    <a href="#" class="like">Like</a>
                                	<a href="#" class="dislike">Dislike</a>
                                </div>
                            	<h5><a href="#" class="colr">By MySebbb:</a></h5>
                                <p class="time">7 months ago</p>
                                <div class="clear"></div>
                                <p class="txt">
                                	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Sed elit. Nulla sem risus, vestibulum in, volutpat eget, dapibus ac, lectus. Curabitur dolor sapien.
                                </p>
                            </div>
                        </li>
                        <li class="level2">
                        	<div class="thumb">
                            	<a href="#"><img src="images/comments5.gif" alt="" /></a>
                            </div>
                            <div class="desc">
                            	<div class="commentlinks">
                                    <a href="#" class="reply">Reply</a>
                                    <a href="#" class="like">Like</a>
                                	<a href="#" class="dislike">Dislike</a>
                                </div>
                            	<h5><a href="#" class="colr">By MySebbb:</a></h5>
                                <p class="time">7 months ago</p>
                                <div class="clear"></div>
                                <p class="txt">
                                    示例
                                </p>
                            </div>
                        </li>
                        <li class="level2">
                        	<div class="thumb">
                            	<a href="#"><img src="images/comments6.gif" alt="" /></a>
                            </div>
                            <div class="desc">
                            	<div class="commentlinks">
                                    <a href="#" class="reply">Reply</a>
                                    <a href="#" class="like">Like</a>
                                	<a href="#" class="dislike">Dislike</a>
                                </div>
                            	<h5><a href="#" class="colr">By MySebbb:</a></h5>
                                <p class="time">7 months ago</p>
                                <div class="clear"></div>
                                <p class="txt">
                                    示例
                                </p>
                            </div>
                        </li>
                        <li class="level1">
                        	<div class="thumb">
                            	<a href="#"><img src="images/comments7.gif" alt="" /></a>
                            </div>
                            <div class="desc">
                            	<div class="commentlinks">
                                    <a href="#" class="reply">Reply</a>
                                    <a href="#" class="like">Like</a>
                                	<a href="#" class="dislike">Dislike</a>
                                </div>
                            	<h5><a href="#" class="colr">By MySebbb:</a></h5>
                                <p class="time">7 months ago</p>
                                <div class="clear"></div>
                                <p class="txt">
                                	示例
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="clear"></div>
                <!-- Pagination -->
                <div class="paginations">
                	<h5 class="pagehead">PAGE</h5>
                    <ul>
                    	<li class="leftpage"><a href="#">&nbsp;</a></li>
                        <li class="pages"><a href="#">1</a></li>
                        <li class="pages"><a href="#">2</a></li>
                        <li class="pages"><a href="#">3</a></li>
                        <li class="pages"><a href="#">4</a></li>
                        <li class="pages"><a href="#" class="selected">5</a></li>
                        <li class="pages"><a href="#">6</a></li>
                        <li class="pages"><a href="#">7</a></li>
                        <li class="pages"><a href="#">8</a></li>
                        <li class="pages"><a href="#">9</a></li>
                        <li class="pages"><a href="#">10</a></li>
                        <li class="dots">...</li>
                        <li class="pages"><a href="#">103</a></li>
                        <li class="pages"><a href="#">104</a></li>
                        <li class="nextpage"><a href="#">&nbsp;</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Column 2 -->
        <div class="col2">
        	<!-- Tabs -->
            <div class="tabs">
            	<div class="tab_menu_container">
                    <ul id="tab_menu">  
                        <li><a class="current" rel="tab_sidebar_recent">相关视频</a></li>
                        <li><a class="" rel="tab_sidebar_comments">博主视频</a></li>
                        <li><a class="" rel="tab_sidebar_tags">其他视频</a></li>
                    </ul>
                    <div class="clear"></div>
                </div>
                
                <div class="tab_container">
                    <div class="tab_container_in">
                        <!-- Recent --> 
                        <div style="display: none;" id="tab_sidebar_recent" class="tab_sidebar_list">					
                        	<ul class="videolist">
                            	<li>f
                                	<div class="thumb">
                            		<a href="#"><span class="add">&nbsp;</span><span class="rated">&nbsp;</span><img src="images/video5.gif" alt="" /></a>
                                    </div>
                                    <div class="desc">
                                    	<h5><a class="colr title" href="detail.html">Lorem ipsum dolor sit</a></h5>
                                        <p class="viewscount">2,061,785 Views</p>
                                        <p class="postedby">Posted By: <a href="#">Brian</a></p>
                                    </div>
                                </li>
                                <li>
                                	<div class="thumb">
                            		<a href="#"><span class="add">&nbsp;</span><span class="rated">&nbsp;</span><img src="images/video5.gif" alt="" /></a>
                                    </div>
                                    <div class="desc">
                                    	<h5><a class="colr title" href="detail.html">Lorem ipsum dolor sit</a></h5>
                                        <p class="viewscount">2,061,785 Views</p>
                                        <p class="postedby">Posted By: <a href="#">Brian</a></p>
                                    </div>
                                </li>
                                <li>
                                	<div class="thumb">
                                    	<a href="#"><span class="add">&nbsp;</span><span class="rated">&nbsp;</span><img src="images/video7.gif" alt="" /></a>
                                    </div>
                                    <div class="desc">
                                    	<h5><a class="colr title" href="detail.html">Lorem ipsum dolor sit</a></h5>
                                        <p class="viewscount">2,061,785 Views</p>
                                        <p class="postedby">Posted By: <a href="#">RayWilliams</a></p>
                                    </div>
                                </li>
                                <li>
                                	<div class="thumb">
                                    	<a href="#"><span class="add">&nbsp;</span><span class="rated">&nbsp;</span><img src="images/video8.gif" alt="" /></a>
                                    </div>
                                    <div class="desc">
                                    	<h5><a class="colr title" href="detail.html">Lorem ipsum dolor sit</a></h5>
                                        <p class="viewscount">2,061,785 Views</p>
                                        <p class="postedby">Posted By: <a href="#">RayWilliams</a></p>
                                    </div>
                                </li>
                            </ul>			
                        </div> 
                        <!-- END -->
                        <!-- Top Rated -->
                        <div style="display: none;" id="tab_sidebar_comments" class="tab_sidebar_list">  
                            <ul class="videolist">
                            	<li>
                                	<div class="thumb">
                                    	<a href="#"><span class="add">&nbsp;</span><span class="rated">&nbsp;</span><img src="images/video8.gif" alt="" /></a>
                                    </div>
                                    <div class="desc">
                                    	<h5><a class="colr title" href="detail.html">Lorem ipsum dolor sit</a></h5>
                                        <p class="viewscount">2,061,785 Views</p>
                                        <p class="postedby">Posted By: <a href="#">RayWilliams</a></p>
                                    </div>
                                </li>
                                <li>
                                	<div class="thumb">
                                    	<a href="#"><span class="add">&nbsp;</span><span class="rated">&nbsp;</span><img src="images/video7.gif" alt="" /></a>
                                    </div>
                                    <div class="desc">
                                    	<h5><a class="colr title" href="detail.html">Lorem ipsum dolor sit</a></h5>
                                        <p class="viewscount">2,061,785 Views</p>
                                        <p class="postedby">Posted By: <a href="#">RayWilliams</a></p>
                                    </div>
                                </li>
                                <li>
                                	<div class="thumb">
                            		<a href="#"><span class="add">&nbsp;</span><span class="rated">&nbsp;</span><img src="images/video5.gif" alt="" /></a>
                                    </div>
                                    <div class="desc">
                                    	<h5><a class="colr title" href="detail.html">Lorem ipsum dolor sit</a></h5>
                                        <p class="viewscount">2,061,785 Views</p>
                                        <p class="postedby">Posted By: <a href="#">Brian</a></p>
                                    </div>
                                </li>
                                <li>
                                	<div class="thumb">
                            		<a href="#"><span class="add">&nbsp;</span><span class="rated">&nbsp;</span><img src="images/video5.gif" alt="" /></a>
                                    </div>
                                    <div class="desc">
                                    	<h5><a class="colr title" href="detail.html">Lorem ipsum dolor sit</a></h5>
                                        <p class="viewscount">2,061,785 Views</p>
                                        <p class="postedby">Posted By: <a href="#">Brian</a></p>
                                    </div>
                                </li>
                            </ul>
                        </div> 
                        <!-- END -->
                        <!-- Most Commented -->
                        <div style="display: none;" id="tab_sidebar_tags" class="tab_sidebar_list"> 
                            <ul class="videolist">
                            	<li>
                                	<div class="thumb">
                            		<a href="#"><span class="add">&nbsp;</span><span class="rated">&nbsp;</span><img src="images/video5.gif" alt="" /></a>
                                    </div>
                                    <div class="desc">
                                    	<h5><a class="colr title" href="detail.html">Lorem ipsum dolor sit</a></h5>
                                        <p class="viewscount">2,061,785 Views</p>
                                        <p class="postedby">Posted By: <a href="#">Brian</a></p>
                                    </div>
                                </li>
                                <li>
                                	<div class="thumb">
                            		<a href="#"><span class="add">&nbsp;</span><span class="rated">&nbsp;</span><img src="images/video5.gif" alt="" /></a>
                                    </div>
                                    <div class="desc">
                                    	<h5><a class="colr title" href="detail.html">Lorem ipsum dolor sit</a></h5>
                                        <p class="viewscount">2,061,785 Views</p>
                                        <p class="postedby">Posted By: <a href="#">Brian</a></p>
                                    </div>
                                </li>
                                <li>
                                	<div class="thumb">
                                    	<a href="#"><span class="add">&nbsp;</span><span class="rated">&nbsp;</span><img src="images/video7.gif" alt="" /></a>
                                    </div>
                                    <div class="desc">
                                    	<h5><a class="colr title" href="detail.html">Lorem ipsum dolor sit</a></h5>
                                        <p class="viewscount">2,061,785 Views</p>
                                        <p class="postedby">Posted By: <a href="#">RayWilliams</a></p>
                                    </div>
                                </li>
                                <li>
                                	<div class="thumb">
                                    	<a href="#"><span class="add">&nbsp;</span><span class="rated">&nbsp;</span><img src="images/video8.gif" alt="" /></a>
                                    </div>
                                    <div class="desc">
                                    	<h5><a class="colr title" href="detail.html">Lorem ipsum dolor sit</a></h5>
                                        <p class="viewscount">2,061,785 Views</p>
                                        <p class="postedby">Posted By: <a href="#">RayWilliams</a></p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- END -->
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
            <!-- Top Searches -->
            <div class="topsearches">
            	<h5>Top Searches</h5>
                <ul>
                	<li><a href="#" class="colr">Anne Roumanoff</a></li>
                </ul>
                <a href="#" class="buttonone"><span>Most Viewed Videos</span></a>
                <a href="#" class="buttonone"><span>Recent Videos</span></a>
            </div>
        	<!-- Advertisment -->
        	<div class="adv">
            	<a href="#"><img src="images/adv1.gif" alt="" /></a>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<div class="clear"></div>

</body>
</html>
