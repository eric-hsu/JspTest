<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>jsp的生命周期</title>
</head>
<body>
	<!-- jsp的生命周期 
		1，服务器接收客户端请求
		2，判断是不是第一次访问，如果是第一次访问这编译jsp文件成字节码文件，并调用起innit方法初始化servlet
		3，处理jspService()方法处理用户请求，每个用户jsp引擎会开启一个线程调用jspService方法，多线程处理，资源共享保护问题。
	-->
</body>
</html>