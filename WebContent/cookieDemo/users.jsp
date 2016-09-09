<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.Cookie,java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户信息</title>
</head>
<body>
	<h1>用户信息</h1>
	<hr>
	<%
	    request.setCharacterEncoding("UTF-8");
		String userName = "";
		String password = "";
		
		Cookie [] cookies = request.getCookies();
		if(cookies != null && cookies.length>0){    //以前保存过cookies
			for(Cookie c:cookies){
				if(c.getName().equals("userName")){
					//userName = c.getValue(); 
					//URLDecoder.decode(userName,"UTF-8");   //字符集解码
					userName = URLDecoder.decode(c.getValue(),"UTF-8");
				}
				if(c.getName().equals("password")){
					//password = c.getValue();
					//URLDecoder.decode(password, "UTF-8");
					password = URLDecoder.decode(c.getValue(),"UTF-8");
				}
			}
		}
	%>
	<br>
	<br>
	<br>
	
	用户名： <%= userName%><br/>
	密码： <%= password%><br/>
</body>
</html>