<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
 <meta name="viewport" content="width=device-width" />
    <title>账户提现</title>
    <link href="style/css/StyleSheet.css" rel="stylesheet" />
    <script src="style/js/jquery-1.7.1.min.js"></script>
    <script src="style/js/jquery.unobtrusive-ajax.min.js"></script>

    <script src="style/js/WdatePicker.js"></script>
<script type="text/javascript" src="/WebResource.axd?d=zUbwwxDCFW_twXMWlBWEw_vFaAIwvjB5e6wm8DhkgaObx-3UjgzYFml8itzV0ktMRuAYCsQDijpkFOwMAFdfCQ2&t=635304888701212866"></script>

    <script>

        //提交后返回结果
        function AfterAdd(result) {
            if (result == "ok") {
                alert("操作成功！");
                window.location.reload();
            }
            else {
                alert(result);
                window.location.reload();
            }
        }
        function getCountry(obj) {
            //获取自定义属性的值
            var takinfo = $(obj).find("option:selected").attr("ifo"); //$("select option:selected").data("ifo"); //
            $("#takinfo").text(takinfo);
        }
    </script>
</head>
<body>
    <!--最外层-->
    <div class="biglayer">
        

  <!--标题-->
  <div class="the_title">
    <p>账户提现<span></span></p>
  </div>
  
  <!--当前位置-->
  <ul class="location">
    <li><a href="#">财务管理</a></li>
    <li><a href="#">账户提现</a></li>
  </ul>


        <!--资料box-->
        <div class="data_box">

            

<div class="listing_title">
    <p>账户提现</p>
</div>


            <div class="listing_box">
                <div class="listing_box">
                    <ul class="search">
                        <li>
<form action="CashSubMit" data-ajax="true" data-ajax-method="Post" data-ajax-success="AfterAdd" id="frmSet" method="post">                                <div class="group">
                                    
                                        <label class="label">电子币：${integral.dianzibi}</label> 
                                        <label class="label">奖金币：${integral.jiangjinbi}</label> 
                                        <label class="label">种子币：${integral.zhongzibi}</label> 
                                        <label class="label">购物积分：${integral.shopjifen}</label> 

                                </div>
                                <div class="group" style="clear: both;"> 
                                    <select name="takeInt" id="takeInt" onchange="getCountry(this)" class="selectbox"  >
                                        
                                            <option value="0" ifo="手续费：6.00%最低:100最高：50000且100整数倍" >奖金币提现</option>


                                    </select>

                                    <input name="mPoints" type="text" value="0" class="input" />
                                </div>
                                <div class="group" style="clear: both;">
                                    <label class="label" id="takinfo">手续费：6.00%最低:100最高：50000且100整数倍</label>

                                </div>
                                <div class="group" style="clear: both;">
                                    <label class="label">开户银行：${user.bankmessage}</label>
                                    <label class="label">银行帐号：${user.banknumber}</label>
                                    <label class="label">开户名：${user.kaihuname}</label>


                                </div>
                                <div class="group" style="clear: both;">
                                    <input type="Submit" class="searchbtn" value="提 交" style="margin-right:auto"   />
                                    <input name="Reset" class="searchbtn" type="reset" value="重 填" />
                                </div>
</form>
                        </li>
                    </ul>
<form action="/Finance/takeCash" data-ajax="true" data-ajax-method="Post" data-ajax-mode="replace" data-ajax-update="#ListContent" id="searchForm" method="post">                        <ul class="search">
                            <li>
                                <div class="group">
                                    <label class="label">
                                        申请日期：</label>
                                    <input id="startDate" name="startDate" type="text" onfocus="WdatePicker()" class="input" readonly="ture" />
                                </div>
                                <div class="group">
                                    <label class="label">
                                        -</label>
                                    <input id="overDate" name="overDate" type="text" onfocus="WdatePicker()" class="input" readonly="ture" />
                                </div>
                                <div class="group">
                                    <input name="" type="submit" class="searchbtn" value="搜 索" />
                                </div>
                            </li>
                        </ul>
</form>
                    <div id="ListContent" class="listing">
                        <script>
    function DeleteTack(id) {
        if (confirm("是否删除提现？")) {
            $.post("/Finance/DelTake", { Id: id }, function (data) {
                if (data == "ok") {
                    window.location.reload();
                    //$("#searchForm").submit();
                } else {
                    alert(data);
                    window.location.reload();
                    //$("#searchForm").submit();
                }
            });
        }
    }

</script>
<table class="ts" cellspacing="0" border="0" id="GridView1" style="border-collapse: collapse;">
    <tr>
        <th nowrap>提现账户</th>
        <th nowrap>提现金额</th>
        <th nowrap>手续费</th>
        <th nowrap>实际金额</th>
        <th nowrap>开户银行</th>
        <th nowrap>银行账号</th>
        <th nowrap>开户姓名</th>
        <th nowrap>申请日期</th>
        <th nowrap>状态</th>
        <th width="8%" nowrap>操作</th>
    </tr>
	  <c:forEach var="tixianJilu" items="${tixianJilus}">
	  
	  	 <tr>
            <td align="center" nowrap>${tixianJilu.tixianzhanghu }</td>
            <td align="center" nowrap>${tixianJilu.tixianjine}</td>
            <td align="center" nowrap>6.00</td>
            <td align="center" nowrap>${tixianJilu.shijijine}</td>
            <td align="left" nowrap style="line-height: 14px; word-break: break-all; word-wrap: break-word;">${user.bankmessage }</td>
            <td align="center" nowrap>${user.banknumber }</td>
            <td align="center" nowrap>${user.kaihuname }</td>
            <td align="center" nowrap style="line-height: 14px;"><fmt:formatDate value="${tixianJilu.time}" pattern="yyyy-MM-dd"/></td>
            <td align="center" nowrap>${tixianJilu.status}</td>
            <td align="center" nowrap><span>--</span></td>
        </tr>
	  </c:forEach>
       
</table>
<div class="nextpage cBlack">
    <ul style="">
        <li class="pageleft">共 8 条, 1 / 1 页</li>
        <li class="pageright">
            <!-- AspNetPager V6.0.0 for VS2005  Copyright:2003-2006 Webdiyer (www.webdiyer.com) -->
           
                
<!--MvcPager v2.0 for ASP.NET MVC 3.0+ © 2009-2013 Webdiyer (http://www.webdiyer.com)-->
<div data-ajax="true" data-ajax-dataformid="#searchForm" data-ajax-method="Post" data-ajax-update="#ListContent" data-invalidpageerrmsg="页索引无效" data-maxpages="1" data-mvcpager="true" data-outrangeerrmsg="页索引超出范围" data-pageparameter="page" data-urlformat="/Finance/takeCash?page=__page__"><a disabled="disabled">首页</a>&nbsp;&nbsp;<a disabled="disabled">上一页</a>&nbsp;&nbsp;1&nbsp;&nbsp;<a disabled="disabled">下一页</a>&nbsp;&nbsp;<a disabled="disabled">尾页</a>&nbsp;&nbsp;<input type="text" value="1" data-pageindexbox="true"/><input type="button" data-submitbutton="true" value="跳转"/></div>
<!--MvcPager v2.0 for ASP.NET MVC 3.0+ © 2009-2013 Webdiyer (http://www.webdiyer.com)-->

              
            <!-- AspNetPager V6.0.0 for VS2005 End -->


        </li>
    </ul>
</div> 
                    </div>
                </div>
            </div>
        </div>
        <script>

            getCountry();
        </script>
</body>
</html>
