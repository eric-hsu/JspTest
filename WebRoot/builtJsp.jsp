<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp内置对象</title>
</head>
<body>
	<!-- jsp九大内置对象：out request response session aplication exception page pageContext config -->
	<!-- jsp九大内置对象：out -->
	<h1>out内置对象</h1>
	<%
		out.println("out对象打印一段文字<br>");
		out.println("out对象打印一段文字<br>");
		out.flush();//先清理前面out
		//out.clear();//抛出异常，只打印前面两句
		//out.clearBuffer();//不会抛出异常
		out.println("out对象打印一段文字<br>");
		out.println("out对象打印一段文字<br>");
		out.println("out对象打印一段文字<br>");
	 %>
	<br><hr>
	缓冲区大小：<%=out.getBufferSize() %>byte<br>
	缓冲区剩余大小：<%=out.getRemaining() %>byte<br>
	是否自动清理缓冲区：<%=out.isAutoFlush() %><br>
	
	<h1>request内置对象</h1>
	<form action="requestJsp.jsp" method="post">
		<% request.setAttribute("password", "123456"); %>
		<table>
			<tr>
				<td>
					用户名：
				</td>
				<td>
					<input type="text" value="胡顺强" name="username">
				</td>
			</tr>
			<tr>
				<td>
					爱好：
				</td>
				<td>
					篮球<input type="checkbox" value="篮球" checked="checked"  name="favorites">
					足球<input type="checkbox" value="足球" name="favorites">
					乒乓球<input type="checkbox" value="乒乓球" name="favorites">
					爬山<input type="checkbox" value="爬山" name="favorites">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="提交">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<a href="requestJsp.jsp?username=husq胡顺强">通过连接访问</a>
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>