<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
   <meta name="viewport" content="width=device-width" />
    <title>我的主页</title>
    <link href="style/css/css/index.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="style/css/font-awesome.min.css">
    <script src="style/js/jquery-1.10.1.min.js"></script>
    <script src="style/js/all.js"></script>
    <!--6.8-->
    <link rel="stylesheet" type="text/css" href="/OperStyle/css/pipei.css">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".btn-details").click(function () {
                $(this).parent().parent().next().slideToggle('normal').next().slideUp('normal');
            });


            $(".btn-xs").click(function () {
                $(".xinxi").slideToggle('normal');
                $(".transactionWrap").slideUp('normal');
            });
        });
        jQuery(document).ready(function ($) {
            $('.tip').click(function () {
                $(this).parent().next().slideToggle('normal').next().toggle();
            });
        });

    </script>
</head>

<body>
    <!--最外层-->
    <div class="biglayer">
        <!--标题-->
        <div class="the_title">
            <p>我的主页<span>My homepage</span></p>
        </div>

        <!--当前位置-->
        <ul class="location">
            <li><a href="#">Home</a></li>
            <li><a href="#">我的主页</a></li>
        </ul>

        <!--首页内容-->
        <div class="index_content">


            <!--右边-->
            <div class="index_contentRight">
                <div class="index_contentRight_title">
                    <p><i class="icon-user"></i>网站公告<span>Notice</span></p>
                    <div class="index_contentRight_title_btn index_btn">&nbsp;</div>
                </div>
                <ul class="index_contentNews">

                        <li><i>2018/2/8 15:04:14</i> <a href="/News/Info?NId=14" >货物配送通知</a> </li>
                        <li><i>2018/2/6 0:18:20</i> <a href="/News/Info?NId=12" >关于春节节假及业务工作安排</a> </li>
                        <li><i>2018/2/2 10:20:33</i> <a href="/News/Info?NId=11" >关于货物发货滞后的问题及发货调整</a> </li>
                        <li><i>2018/1/25 13:24:11</i> <a href="/News/Info?NId=8" >系统公告</a> </li>
                        <li><i>2018/1/6 16:32:58</i> <a href="/News/Info?NId=7" >奖金币提现须知</a> </li>
                        <li><i>2018/1/1 3:36:39</i> <a href="/News/Info?NId=6" >2018新年快乐</a> </li>
                        <li><i>2017/12/11 20:16:39</i> <a href="/News/Info?NId=5" >关于产品配送的通知</a> </li>
                        <li><i>2017/12/8 19:48:57</i> <a href="/News/Info?NId=4" >物流信息通告</a> </li>
                        <li><i>2017/11/28 17:34:04</i> <a href="/News/Info?NId=3" >奖金币提现公告</a> </li>
                </ul>
            </div>
        </div>
</body>
</html>
