<%@ page language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<title>接收信息jsp页面</title>
</head>
<body>
	<!-- 通过form提交接收乱码，把接收jsp页面使用request设置编码与提交表单的编码一致，通过url访问的乱码，需要更改tomcat中server.xml中connect-port后加上URLEecoding="utf-8"配置 -->
	<% request.setCharacterEncoding("UTF-8"); %>
	
	用户名：<%=request.getParameter("username") %>
	<br>
	爱好：<%
		if(request.getParameterValues("favorites")!=null){
			String[] favorites  = request.getParameterValues("favorites");
			for(int i=0;i<favorites.length;i++){
				out.println(favorites[i]+"&nbsp;&nbsp;");
			}
		}
	 %>
	 <br>
	 密码：<%=request.getAttribute("password") %><br>
	 请求的MIME类型：<%=request.getContentType() %><br>
	 协议类型及版本号：<%=request.getProtocol() %><br>
	 服务器主机名：<%=request.getServerName() %><br>
	 服务器端口号：<%=request.getServerPort() %><br>
	 请求客户端的ip地址：<%=request.getRemoteAddr() %>
</body>
</html>