<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>My JSP 'addCookie.jsp' starting page</title>
  </head>
  
  <body>
    <%
		response.addCookie(new Cookie("username","Jack"));
		response.addCookie(new Cookie("password","123456"));
		response.sendRedirect("getCookies.jsp");
	%>
  </body>
</html>
