<%@ page language="java" import="java.util.*,java.io.*" contentType="text/html; charset=utf-8"%>
<% 
	response.setContentType("text/html;charset=utf-8");
	out.println("jsp内置out对象输出");
	out.println("<br>");
	
	out.flush();
	
	PrintWriter outer = response.getWriter();
	outer.println("response输出流输出的对象！");
	
	response.sendRedirect("index.jsp");
%>