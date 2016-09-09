<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.Cookie,java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录成功</title>
</head>
<body>
	<h1>登录成功</h1>
	<hr>
	<br>
	<br>
	<br>
	<%
		request.setCharacterEncoding("UTF-8");   //字符集编码
		//首先判断用户是否选择了记住登录状态
		String [] isUseCookies = request.getParameterValues("loginStatus");
		if(isUseCookies!=null && isUseCookies.length>0){
			//把用户名和密码保存在Cookie对象里面
			//String userName = request.getParameter("userName");
			//String password = request.getParameter("password");
			
			String userName = URLEncoder.encode(request.getParameter("userName"),"UTF-8");
			String password = URLEncoder.encode(request.getParameter("password"),"UTF-8");
			
		/* 	URLEncoder.encode(userName, "UTF-8");   //字符集编码设置
			URLEncoder.encode(password, "UTF-8");	//字符集编码设置 */
			
			
			Cookie userNameCookie = new Cookie("userName",userName);
			Cookie passwordCookie = new Cookie("password",password);
			userNameCookie.setMaxAge(60*60*24*10);   //设置Cookie的最大生存期限10天
			passwordCookie.setMaxAge(60*60*24*10);
			response.addCookie(userNameCookie);  //添加Cookie 
			response.addCookie(passwordCookie);
		}else{
			//把Cookie清空 1.第一次进来本来没保存Cookie  2.Cookie保存了,后面不勾选需要清空
			Cookie [] cookies = request.getCookies();
			if(cookies != null && cookies.length>0){    //以前保存过cookies
				for(Cookie c:cookies){
					if(c.getName().equals("userName") || c.getName().equals("password")){
						c.setMaxAge(0);    //失效：设置Cookie最大生存期限为0  
						response.addCookie(c);   //重新添加Cookie
					}
				}
				
			}
			
			
		}
	
	
	%>
	<a href="users.jsp" target="_blank">查看用户信息</a>
</body>
</html>