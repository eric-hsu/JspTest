<%@page import="java.text.SimpleDateFormat,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>jsp内置对象:session</title>
</head>
<body>
	<% 
		
		SimpleDateFormat formate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
		Date date = new Date(session.getCreationTime());
		session.setAttribute("username", "husq");
		session.setAttribute("password", "123");
		
		session.setMaxInactiveInterval(10);//有效期为10秒钟
		//session.invalidate();//销毁session
	%>
	<h1>session内置对象</h1>
	<!-- session保存在服务器内存当中 -->
	session执行时间：<%=formate.format(date) %><br>
	session的ID编号：<%=session.getId() %><br>
	session的用户名：<%=session.getAttribute("username") %><br>
	
	<a href="sessionJsp2.jsp" target="_blank">跳转到sessionJsp2.jsp</a>
</body>
</html>