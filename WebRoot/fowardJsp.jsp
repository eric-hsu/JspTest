<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<h1>foward动作</h1>
	<jsp:forward page="userJsp.jsp">
		<jsp:param value="username" name=""/>
		<jsp:param value="password" name=""/>
	</jsp:forward>
</body>
</html>