<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*,java.text.*" %>
<%
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	out.println(sdf.format(date));
 %>
