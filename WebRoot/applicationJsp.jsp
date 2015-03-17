<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>jsp内置对象:application</title>
</head>
<body>
	<h1>application内置对象</h1>
	<%
		application.setAttribute("city", "深圳");
		application.setAttribute("postcode", "0776");
		application.setAttribute("emial", "1027450752@qq.com");
	 %>
	 
	 所在城市：<%=application.getAttribute("city") %><br>
	application中的属性有 ：<% 
		Enumeration enumeration = application.getAttributeNames();
		while(enumeration.hasMoreElements()){
			out.println(enumeration.nextElement()+"&nbsp;&nbsp;&nbsp;");
		}
	%>
</body>
</html>