<%@ page language="java" contentType="text/html; charset=utf-8" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>jsp内置对象:exception</title>
</head>
<body>
	<h1>测试一次对象</h1>
	<br>
	异常消息:<%=exception.getMessage()%>
	异常记录描述:<%=exception.toString()%>
</body>
</html>