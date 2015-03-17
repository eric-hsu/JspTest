<%@ page language="java" contentType="text/html; charset=utf-8" errorPage="exceptionJsp2.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>jsp内置对象:exception</title>
</head>
<body>
	<h1>exception内置对象</h1>
	<!-- jsp内置对象:pageContext 可以获取session对象，request对象，response对象等jsp其他内置对象 -->
	page页面的session获取:<%=pageContext.getSession().getAttribute("username") %>
	
	<% 
		System.out.println(100/0);
	%>
</body>
</html>