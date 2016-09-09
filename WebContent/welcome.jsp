<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>My JSP 'welcome.jsp' starting page</title>
  </head>
  
  <body>
    <%
		//获取请求中的Cookie，以数组方式保存
		Cookie cookies[]=request.getCookies();
		//循环遍历数组，得到key为“uname”的Cookie
		for(int i=0;i<cookies.length;i++){
			Cookie ucookie=cookies[i];
			if(ucookie.getName().equals("uname"))//判断Cookie的名称
				//获取key对应的value，输出显示
				out.println("欢迎你： "+ucookie.getValue());
		}
	%> 

  </body>
</html>
