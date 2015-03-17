<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>jsp九九乘法练习</title>
</head>
<body>
	<%!
		String printMultiTable(){
			String s="";
			for(int i=0;i<10;i++){
				for(int j=0;j<i+1;j++){
					s+=i+"*"+j+"="+(i*j)+"&nbsp;&nbsp;&nbsp;&nbsp;";
				}
				s+="<br>";
			}
			return s;
		}
		
		void privateMultiTable2(JspWriter out)throws Exception{
			String s="";
			for(int i=0;i<10;i++){
				for(int j=0;j<i+1;j++){
					out.print(i+"*"+j+"="+(i*j)+"&nbsp;&nbsp;&nbsp;&nbsp;");
				}
				out.print("<br>");
			}
	 	}
	 %>
	 
	 <%
	 		
	  %>
	 <h1>一，以表达式的方式打印九九乘法表：</h1>
	 <%=printMultiTable()%>
	 
	 <br>
	 <h1>二，以脚本的方式打印九九乘法表：</h1>
	 <%
		privateMultiTable2(out);
	  %>
</body>
</html>