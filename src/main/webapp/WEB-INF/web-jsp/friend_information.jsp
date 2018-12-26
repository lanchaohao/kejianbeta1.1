<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/static/User_Data_Update/css/jiazaitoubu.css"
          type="text/css" />
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/static/User_Data_Update/css/css.css"
          type="text/css" />
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/static/User_Data_Update/css/center.css"
          type="text/css" />
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/static/User_Data_Update/city/city.css"
          type="text/css" />
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/static/User_Data_Update/css/shangchuan.css"
          type="text/css" />

    <!-- <script src="<%=request.getContextPath()%>/static/User_Data_Update/"></script> -->
    <script
            src="<%=request.getContextPath()%>/static/User_Data_Update/js/jquery-1.8.3.min.js"></script>
    <script
            src="<%=request.getContextPath()%>/static/User_Data_Update/js/index2.js"></script>
    <script
            src="<%=request.getContextPath()%>/static/User_Data_Update/js/index2.js"></script>

    <script type="text/javascript">

        //显示灰色 jQuery 遮罩层
        function showBg() {
            var bh = $("body").height();
            var bw = $("body").width();
            /* 	$("#sid").click(function(){
                    //alert("123");
                     window.open("Shangchuan.jsp","_blank","toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=400, height=200");

                });  */

            $("#fullbg").css({
                height: bh,
                width: bw,
                display: "block"
            });
            $("#dialog").show();
        }
        //关闭灰色 jQuery 遮罩
        function closeBg() {
            $("#fullbg,#dialog").hide();
        }


    </script>


    <title>课后-用户信息</title>
</head>
<body>

</div>

<!-- 这里是上传头像界面 -->

<div class="top" id="wyqtb">
    <!--热门搜索-->

    <!--导航-->
    <div class="dao_hang" style="background-color: #6C89B2;">


        <!--结束-->
        <div class="dao_list">
            <a href="index.sf">首页</a> <a href="javascript:return false;">视频收藏</a> <a href="Shopping.sf">周边</a>
            <a href="javascript:return false;">小黑屋</a>
        </div>
    </div>
</div>
<script>
    window.onload=function(){
        $(".aside").css({display:"none"})
        $(".important").mouseenter(function(){
            $(".aside").css({display:"block"})
        }).mouseleave(function(){
            $(".aside").css({display:"none"})
        })
    }
</script>
<!--当前位置-->
<div class="now_positionm">
    <span>当前位置：</span><a href="index.sf">首页></a><a
        href="User_full_information.sf">个人中心</a>
</div>
<!--centers-->
<div class="centers_m">
    <!--清除浮动-->
    <div class="clear_sm"></div>
    <!--left-->
    <div class="centers_ml">
        <!--头像-->
        <div class="center_header">
            <a href="User_full_information.sf"><img
                    src="<%=request.getContextPath()%>${user.userHand}" /></a> <em>您好，<font>${user.userName}</font></em>
            <!-- <a href="">上传头像</a></font>	 -->
            <font style="color: red; font-size: 10px;">(下方可修改资料~喵)
        </div>
        <!--列表go-->
        <div class="centers_listm">
            <div class="centers_listm_one">
                <img
                        src="<%=request.getContextPath()%>/static/User_Data_Update/images/zshy.png" />
                <em>会员中心</em>
            </div>
            <!--一条开始-->
            <div class="centers_listm_one_in">
                <img
                        src="<%=request.getContextPath()%>/static/User_Data_Update/images/shezhi.png" />
                <em>资料管理</em> <b></b>
            </div>

            <span class="gjszmdm">
                <%--<a href="javascript:showBg();"--%>
                                      <%--class="center_in_self"><font id="shangchuan">上传头像</font></a> <!-- <input type="submit" id="sid" class="center_in_self" value="上传头像" /> -->--%>
					<a href="he_information.sf" class="center_in_self"><font>信息资料</font></a>
					<%--<a href="Bank_Card.sf" class="center_in_self"><font>钱包管理</font></a>--%>
					<%--<a href="Attention.sf" class="center_in_self"><font>好友管理</font></a>--%>
				</span>
            <!--一条开始-->
            <div class="centers_listm_one_in">
                <img
                        src="<%=request.getContextPath()%>/static/User_Data_Update/images/ddgl.png" />
                <em>课程管理</em> <b></b>
            </div>
            <%--<span class="gjszmdm"> <a href="Order.sf" class="center_in_self"><font>我的订单</font></a>--%>
            <%--<a href="DeletOrder" class="center_in_self"><font>已删除订单</font></a> <a--%>
            <%--href="javascript:return false;" class="center_in_self"><font>订单投诉</font></a>--%>
            <%--</span>--%>
            <span class="gjszmdm"> <a href="he_publish.sf" class="center_in_self"><font>发布的课程</font></a>
					<%--<a href="Subscribe.sf" class="center_in_self"><font>订阅的课程</font></a> <a--%>
                        href="javascript:return false;" class="center_in_self"><font>...</font></a>
				</span>

            <%-- <!--一条开始-->
            <div class="centers_listm_one_in">
                <img
                    src="<%=request.getContextPath()%>/static/User_Data_Update/images/wdssc.png" />
                <em>收藏管理</em> <b></b>
            </div>
            <span class="gjszmdm"> <a href="#" class="center_in_self"><font>店铺收藏</font></a>
                <a href="#" class="center_in_self"><font>菜品收藏</font></a>
            </span> --%>

        </div>
        <script type="text/javascript">
            $(function(){//第一步都得写这个
                $(".centers_listm_one_in").click(function(){
                    $(this).next(".gjszmdm").slideToggle().siblings("gjszmdm").slideUp()
                });

                //弹出上传头像界面


            })
        </script>
    </div>
</body>
</html>