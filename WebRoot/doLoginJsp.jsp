<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>判断是否选择登录记录</title>
</head>
<body>
 	<h1>登录成功</h1>
	<br><br><br><br>
	<%
		String isUserCookies = request.getParameter("isUserCookies");
		if(isUserCookies!=null && isUserCookies.length()>0){
			String username = URLEncoder.encode(request.getParameter("username"),"UTF-8");
			String password = URLEncoder.encode(request.getParameter("password"),"UTF-8");
			
		
			Cookie usernameCookie = new Cookie("username",username);
			Cookie passwordCookie = new Cookie("password",password);
			
			usernameCookie.setMaxAge(486000);//有效期10天有效
			passwordCookie.setMaxAge(486000);//有效期10天有效
			
			response.addCookie(usernameCookie);//保持username的Cookie
			response.addCookie(passwordCookie);//保持password的Cookie
		}else{
			Cookie[] cookies = request.getCookies();
			if(cookies!=null && cookies.length>0){
				for(Cookie c:cookies){
					if(c.getName().equals("username") || c.getName().equals("password")){
						c.setMaxAge(0);//设置cookie失效
						response.addCookie(c);//重新保持cookie
					}
				}
			}
		}
	 %>
	 
	 <a href="userJsp.jsp">用户信息</a>
</body>
</html>