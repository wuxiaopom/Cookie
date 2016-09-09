<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CookieDemo</title>
</head>
  <!-- 实现记忆用户名和密码功能 -->
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
					//URLDecoder.decode(password,"UTF-8");   //字符集解码
					password = URLDecoder.decode(c.getValue(),"UTF-8");

				}
			}
		}
	%>
  
<body>
    <h1>登录管理</h1>
    <hr>
    <form action="doLogin.jsp" method="post">
		用户名：<input type="text" name="userName" value="<%= userName %>"/><br/><br/>
		密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" name="password" value="<%= password %>"/><br/>
		<input type="checkbox" name="loginStatus" value="1">&nbsp;十天内记住我的登录状态<br/>
		<input type="submit" value="确定">
		<input type="button" value="取消">
	</form>
</body>
</html>