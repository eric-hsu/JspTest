<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>jsp相关元素，指令，表达式，小脚本，声明，注释，静态内容</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    This is my JSP page.订单 <br>
    <!-- 注释一 -->
    <%-- 注释二 --%>
    
    <!--  声明 -->
	<%! 
	 	String s= "张三";//声明了一个字符串变了
	 	int add(int x,int y) //声明了一个函数
	 	{
	 		return x+y;
	 	}
	 %>
	
	<!-- 脚本-->
	<%
		out.print(s);
	 %>
	 
	 
	 <!-- 表达式 -->
	 <br>
	 你好，<%=s%>
	 <br>
	 x+y=<%=add(4,5)%>
	 
  </body>
</html>
