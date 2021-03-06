<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.gqw.util.PublicParameters"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
 <meta name="viewport" content="width=device-width" />
    <title>我的账户</title>
    <link href="style/css/css/index.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="style/css/font-awesome.min.css">
    <script src="/style/js/jquery-1.10.1.min.js"></script>
    <script src="/style/js/all.js"></script>
    <!--6.8-->
    <link rel="stylesheet" type="text/css" href="/style/css/pipei.css">
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
            <!--左边-->
            <div class="index_contentLeft">
                <div class="index_contentLeft_title">
                    <p><i class="icon-user"></i>我的帐户<span>My account</span></p>
                    <div class="index_contentLeft_title_btn index_btn">&nbsp;</div>
                </div>

                <ul class="index_contentData">
                    <li style="border-top: 1px solid #dddddd;">
                        <p>帐户编号</p>
                        <span>${user.username}</span>
                        <p>昵称</p>
                        <span>${user.truename}</span></li>
                        <li>
                            <p>销售总业绩</p>
                            <span>${account.xiaoshouzongyeji} </span>
                            <p>直接销售量</p>
                            <span>${account.zhijiexiaoshouliang}</span></li>
                        <li>
                            <p>左区业绩</p>
                            <span>${account.leftyeji}</span>
                            <p>右区业绩</p>
                            <span>${account.rightyeji}</span></li>
                    
                    <li>
                        <p>总分红包</p>
                        <span>${account.zongfenhongbao}</span>
                        <p>出局分红包</p>
                        <span>${account.chujufenhongbao}</span></li>
                    <li>
                        <p>未出局分红包</p>
                        <span>${account.weichujufenhongbao}</span>
                        <p>电子币余额</p>
                        <span><i class="icon-money" style="color: green;"></i>${account.dianzibi}</span></li>
                    <li>
                        <p>种子币余额</p>
                        <span><i class="icon-money" style="color: green;"></i>${account.zhongzibi}</span>
                        <p>购物积分余额</p>
                        <span><i class="icon-money" style="color: green;"></i>${account.shopjifen}</span></li>
                    <li>
                        <p>奖金余额</p>
                        <span><i class="icon-money" style="color: green;"></i>${account.jiangjinbi}</span>

                        <p>推广链接：</p>
                        <span><a href="javascript:;" data-clipboard-target="nr" id="fz">点击复制</a></span>
                        <input type="hidden" id="nr"  value="http://www.ymjfxgl.com/Home/register?ReName=txp88888" />
                        <script src="style/js/ZeroClipboard.min.js"></script>
                        <script type="text/javascript">
                            // 定义一个新的复制对象
                            var clip = new ZeroClipboard(document.getElementById("fz"), {
                                moviePath: "/Plugin/ZeroClipboard/ZeroClipboard.swf"
                            });

                            // 复制内容到剪贴板成功后的操作
                            clip.on('complete', function (client, args) {
                                alert("复制成功!");
                            });
                        </script>
                    </li>

                    <li>
                        <p>荣誉等级</p>
                        <span>${account.rongyulevel}</span>
                        <p>下一级别：</p>
                        <span>主任</span>
                    </li>
                </ul>
            </div>

        </div>
</body>
</html>

