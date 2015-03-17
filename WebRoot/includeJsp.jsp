<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
 	 <%@include file="dateJsp.jsp" %> <!-- include指令   1 文件实际内容 2 只有一个servlet 3 编译时间较慢 4 执行时间稍快-->
	 <jsp:include page="dateJsp.jsp" flush="false"/> <!-- include动作 1 文件返回结果   2 两个servlet 3 编译时间较快 4 执行时间较慢，每次资源必须被解析-->
</body>
</html>