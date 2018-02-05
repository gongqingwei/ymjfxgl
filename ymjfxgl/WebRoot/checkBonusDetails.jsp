<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<meta name="viewport" content="width=device-width" />
		<title>奖金明细查询页面</title>
		<link href="style/css/StyleSheet.css" rel="stylesheet" />
		<script src="style/js/jquery-1.7.1.min.js">
</script>
		<script src="style/js/jquery.unobtrusive-ajax.min.js">
</script>
		<script src="style/js/WdatePicker.js">
</script>
		<script type="text/javascript"
			src="/WebResource.axd?d=zUbwwxDCFW_twXMWlBWEw_vFaAIwvjB5e6wm8DhkgaObx-3UjgzYFml8itzV0ktMRuAYCsQDijpkFOwMAFdfCQ2&t=635304888701212866">
</script>
	</head>
	<body>

		<!--最外层-->
		<div class="biglayer">



			<!--标题-->
			<div class="the_title">
				<p>
					奖金列表
					<span></span>
				</p>
			</div>

			<!--当前位置-->
			<ul class="location">
				<li>
					<a href="#">首页</a>
				</li>
				<li>
					<a href="#">奖金列表</a>
				</li>
			</ul>


			<!--资料box-->
			<div class="data_box">



				<div class="listing_title">
					<p>
						奖金列表
					</p>
				</div>


				<div class="listing_box">
					<form action="/Bonus/BonusInfo_u" data-ajax="true"
						data-ajax-method="Post" data-ajax-mode="replace"
						data-ajax-update="#ListContent" id="searchForm" method="post">
						<ul class="search">
							<li>
								<div class="group">
									<label class="label">
										奖励类型：
									</label>
									<select name="cat" class="selectbox">
										<option value="">
											全部
										</option>
										<option value="1">
											分红奖
										</option>
										<option value="2">
											直推奖
										</option>
										<option value="3">
											见点奖
										</option>
										<option value="4">
											服务津贴
										</option>
										<option value="5">
											管理奖
										</option>
										<option value="6">
											全国董事
										</option>

									</select>
								</div>
								<div class="group">
									<input name="achiveTime" type="hidden" value="2018/2/5 0:00:00" />
									<input name="uid" type="hidden" value="113898" />
									<input type="submit" name="btnLevelUp" value=" 搜 索 "
										id="btnLevelUp" class="searchbtn" />
									<input type="button" onclick="history.go(-1);" value="返回"
										class="searchbtn" />
								</div>
							</li>
						</ul>
					</form>
					<div id="ListContent" class="listing">
						<script src="/Plugin/layer/layer.js">
</script>
						<script>
function lalert(info) {
	var Width = 775;
	var sWidth = document.body.scrollWidth;
	var jWidth = Width / sWidth * 100;
	if (jWidth > 100)
		jWidth = 100;

	layer.open( {
		type : 1,
		shadeClose : true,
		shade : [ 0 ],
		title : [ '奖金详情', true ],
		content : info,
		//iframe: { src: "/Home/getNews" },
		area : [ jWidth + "%", '50%' ],
		offset : [ '20%', '' ],
		close : function(index) {
			layer.close(index);
		}
	});
}
</script>
						<table class="ts" cellspacing="0" border="0" id="GridView1"
							style="border-collapse: collapse;">
							<tr>
								<th scope="col">
									订单编号
								</th>
								<th scope="col">
									奖励名字
								</th>
								<th scope="col">
									总额
								</th>
								<th scope="col">
									管理费
								</th>
								<th scope="col">
									实际金额
								</th>



								<th scope="col">
									时间
								</th>
								<th scope="col" style="width: 50%">
									说明
								</th>
							</tr>
							<tr>
								<td>
									txp88888
								</td>
								<td>
									分红奖
								</td>
								<td>
									9.00
								</td>
								<td>
									0.54
								</td>
								<td>
									9.00
								</td>



								<td>
									2018/2/5 1:02:00
								</td>
								<td>
									【编号:txp88888-1单数:3可得:6.75】【编号:txp88888-2.....
									<a href="javascript:;"
										onclick="lalert('【编号:txp88888-1单数:3可得:6.75】【编号:txp88888-2单数:1可得:2.25】')">查看详细</a>
								</td>
							</tr>

						</table>
						<div class="nextpage cBlack">
							<ul style="">
								<li class="pageleft">
									共 1 条, 1 / 1 页
								</li>
								<li class="pageright">
									<!-- AspNetPager V6.0.0 for VS2005  Copyright:2003-2006 Webdiyer (www.webdiyer.com) -->


									<!--MvcPager v2.0 for ASP.NET MVC 3.0+ © 2009-2013 Webdiyer (http://www.webdiyer.com)-->
									<div data-ajax="true" data-ajax-dataformid="#searchForm"
										data-ajax-method="Post" data-ajax-update="#ListContent"
										data-invalidpageerrmsg="页索引无效" data-maxpages="1"
										data-mvcpager="true" data-outrangeerrmsg="页索引超出范围"
										data-pageparameter="page"
										data-urlformat="/Bonus/BonusInfo_u?achiveTime=2018%2F2%2F5%200%3A00%3A00&amp;uid=113898&amp;page=__page__">
										<a disabled="disabled">首页</a>&nbsp;&nbsp;
										<a disabled="disabled">上一页</a>&nbsp;&nbsp;1&nbsp;&nbsp;
										<a disabled="disabled">下一页</a>&nbsp;&nbsp;
										<a disabled="disabled">尾页</a>&nbsp;&nbsp;
										<input type="text" value="1" data-pageindexbox="true" />
										<input type="button" data-submitbutton="true" value="跳转" />
									</div>
									<!--MvcPager v2.0 for ASP.NET MVC 3.0+ © 2009-2013 Webdiyer (http://www.webdiyer.com)-->


									<!-- AspNetPager V6.0.0 for VS2005 End -->


								</li>
							</ul>
						</div>

					</div>
				</div>
			</div>

		</div>
	</body>
</html>
