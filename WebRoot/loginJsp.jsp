<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>登录页面</title>
</head>
<body>
	<h1>用户登录</h1>
	<hr>
	<%
		request.setCharacterEncoding("UTF-8");
		String username="";
		String password="";

		Cookie[] cookies = request.getCookies();
		if(cookies!=null && cookies.length>0){
			for(Cookie c:cookies){
				if(c.getName().equals("username")){
					username = c.getValue();
				}
				if(c.getName().equals("password")){
					password = c.getValue();
				}
			}
		}
	 %>
	<form action="doLoginJsp.jsp" method="post">
		<table>
			<tr>
				<td>用户名</td>
				<td><input type="text" name="username" value="<%=username %>"></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="text" name="password" value="<%=password %>"></td>
			</tr>
			<tr>
				<td colspan="2">是否保持cookie记录<input type="checkbox" name="isUserCookies"> </td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="submit" value="submit"> </td>
			</tr>
		</table>
	</form>
</body>
</html>