<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.gqw.util.PublicParameters"%>
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
    <title>升级管理</title>
    <link href="style/css/StyleSheet.css" rel="stylesheet" />
    
    <script src="style/js/jquery-1.7.1.min.js"></script>
    <script src="style/js/jquery.unobtrusive-ajax.min.js"></script>
    <script src="style/j/layer.js"></script>
    <script src="style/js/WdatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="/WebResource.axd?d=zUbwwxDCFW_twXMWlBWEw_vFaAIwvjB5e6wm8DhkgaObx-3UjgzYFml8itzV0ktMRuAYCsQDijpkFOwMAFdfCQ2&t=635304888701212866"></script>
    <script>
        //提交后返回结果
        function AfterAdd(result) {

            if (result == "ok") {
                alert("操作成功");
                window.location.reload();
            }
            else {
                alert(result);
                window.location.reload();
            }
        }
    </script>
</head>
<body>
    <!--最外层-->
    <div class="biglayer">
        

  <!--标题-->
  <div class="the_title">
    <p>复投与分红列表<span></span></p>
  </div>
  
  <!--当前位置-->
  <ul class="location">
    <li><a href="#">业务管理</a></li>
    <li><a href="#">复投与分红列表</a></li>
  </ul>


        <!--资料box-->
        <div class="data_box">

            

<div class="listing_title">
    <p>复投与分红列表</p>
</div>


            <div class="listing_box">
                <ul class="search">
                    <li>
<form action="insertFenhongOrder" data-ajax="true" data-ajax-method="Post" data-ajax-success="AfterAdd" id="frmSetsel" method="post">                            <div class="group">
                                
                                    <label class="label">电子币：0.0000</label> 
                                    <label class="label">奖金币：97.2800</label> 
                                    <label class="label">种子币：598.1600</label> 
                                    <label class="label">购物积分：12.0000</label> 

                                    <label class="label">电子币复投封顶:30000.00</label>
                                    <label class="label">种子币复投封顶:30000.00</label>
                            </div>
                            <div class="group" style="clear: both;">
                                <label class="label">复投币种:</label>
                                <select name="RvClass" id="RvClass" class="selectbox" >
                                    <option value="1">电子币</option>
                                    <option value="2">种子币</option>
                                </select>
                            </div>
                            <div class="group" >
                                <label class="label">复投单数：</label>
                                <input type="text" name="num" id="num" class="input" />
                            </div>
                            <div class="group">
                                <input type="submit" onclick="layer.load(1, { shade: [0.5, '#808080'] }); return true" class="searchbtn" value="提交">
                            </div>
</form>                    </li>
                </ul>


<form action="reinvestmentAndBonusList"  id="searchForm" method="post">                   
		 <ul class="search">
                       
                        <li>
                        <input type="hidden" name="start" value="1">
                        <input type="hidden" name="pageSize" value="9">
                            <div class="group">
                                <label class="label">

                                    订单编号：
                                </label>
                                <input name="number" type="text" value="" class="input" />
                            </div>
                            <div class="group">
                                <label class="label">日期：</label><input id="startDate" name="date1" type="text" onclick="WdatePicker()" class="input" value="<fmt:formatDate value='<%=PublicParameters.date1 %>' pattern="yyyy-MM-dd"/>" readonly="ture" />
                            </div>
                            <div class="group">
                                <label class="label">至</label>
                                <input id="overDate" name="date2" type="text" onclick="WdatePicker()" class="input" value="<fmt:formatDate value='<%=PublicParameters.date2 %>' pattern="yyyy-MM-dd"/>" readonly="ture" />
                            </div>
                            <div class="group">
                                <input name="" type="submit" class="searchbtn" value="搜 索" />
                            </div>
                        </li>
                    </ul>
</form>
                <div id="ListContent" class="listing">
                    <table cellspacing="0" border="0" id="GridView1" style="border-collapse: collapse;" class="ts">

    <tr>
        <th align="center">编号</th>
        <th align="center">订单编号</th>
        
        <th align="center">复投单数</th>
        <th align="center">复投金额</th>
        <th align="center">总分红</th>
        <th align="center">实际分红</th>
        <th align="center">时间</th>
        <th align="center">状态</th>
    </tr>
     <c:forEach var="fenhongOrder" items="${fenhongOrders}">
        <tr>
            <td align="center">${fenhongOrder.number}</td>
            <td align="center">${fenhongOrder.ordernumber}</td>
            <td align="center">${fenhongOrder.futounumber}</td>
            <td align="center">${fenhongOrder.futoumoney}</td>
            <td align="center">${fenhongOrder.allfenhong}</td>
            <td align="center">${fenhongOrder.truefenhong}</td>
            <td align="center"><fmt:formatDate value="${fenhongOrder.time}" pattern="yyyy-MM-dd"/></td>
            <td align="center">分红中</td>
        </tr>
	  </c:forEach>
</table>
<div class="nextpage cBlack">
    <ul style="">
        <li class="pageleft">共 1 条, 1 / 1 页</li>
        <li class="pageright">
        	 <c:if test="${pager.pageIndex>1}">
        	<a href="reinvestmentAndBonusList?start=1&pageSize=9&loginid=<%=PublicParameters.id %>">首页</a>
			<a href="reinvestmentAndBonusList?start=${pager.prev}&pageSize=9&loginid=<%=PublicParameters.id %>">上一页</a>
			</c:if>
			<c:if test="${pager.pageIndex<pager.totalPage}">
			<a href="reinvestmentAndBonusList?start=${pager.next}&pageSize=9&loginid=<%=PublicParameters.id %>">下一页</a>
			<a href="reinvestmentAndBonusList?start=${pager.totalPage}&pageSize=9&loginid=<%=PublicParameters.id %>">尾页</a>
			</c:if>
        </li>
    </ul>
</div> 
                </div>
            </div>
        </div>
    </div>
</body>
</html>
