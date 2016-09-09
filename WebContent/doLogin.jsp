<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'doLogin.jsp' starting page</title>
  </head>
  
  <body>
    <%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("userName");
		String pwd = request.getParameter("pwd");
		if("sa".equals(name.trim())&& "123".equals(pwd.trim())){
			//以key/value的形式创建Cookie
			Cookie uname=new Cookie("uname", name.trim()); 
			response.addCookie(uname);
			response.sendRedirect("welcome.jsp");
		} 
	%>

  </body>
</html>
