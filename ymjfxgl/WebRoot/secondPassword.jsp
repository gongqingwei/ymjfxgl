<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String jspName=null;
	if(request.getParameter("jspName")!=null){
		jspName=request.getParameter("jspName");
	}else{
		jspName=(String)request.getAttribute("jspName");
	}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>二级密码验证</title>
		<link href="style/css/StyleSheet.css" rel="stylesheet" />
		<script src="style/js/jquery-1.7.1.min.js">
</script>
		<script src="style/s/jquery.unobtrusive-ajax.min.js">
</script>
		<script>
//提交后返回结果
function AfterAdd(result) {
	if (result == "ok") {
		window.top.location.href = "/Bonus/CashInfo";
	} else {
		alert(result);
	}
}
</script>
	</head>
	<body>
		<!--最外层-->
		<div class="biglayer">


			<!--标题-->
			<div class="the_title">
				<p>
					高级密码验证
					<span></span>
				</p>
			</div>

			<!--当前位置-->
			<ul class="location">
				<li>
					<a href="#">首页</a>
				</li>
				<li>
					<a href="#">高级密码验证</a>
				</li>
			</ul>


			<div class="data_box">
				<div class="listing_title">
					<p>
						高级密码验证
					</p>
				</div>


				<div class="listing_box" style="text-align: center; height: 400px">

					<form action="<%=jspName %>" method="post">
						<span>二级密码：</span>
						<input name="pwd" type="password" id="OPass" style="width: 200px;"
							maxlength="20" value="">
						<input type="hidden" name="url" value="/Bonus/CashInfo" />
						<input type="hidden" name="pl" value="2" />
						<input type="submit" class="searchbtn" value="确 定">
					</form>
				</div>
			</div>

		</div>
	</body>
</html>
