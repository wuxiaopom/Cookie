<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>session_page2</title>
</head>
<body>
    Session的ID编号： <%=session.getId() %><br/>
	从Session中获取用户名:<%=session.getAttribute("userName") %> <br/>
	从Session中获取密码:<%=session.getAttribute("password") %>  <br/>
	从Session中获取年龄:<%=session.getAttribute("age") %> <br/>
	Session中保存的属性有：<br/><%
		String  [] names = session.getValueNames();
			for(int i=0;i<names.length;i++){
				out.print(names[i]+"&nbsp;&nbsp");
			}
		 %>
</body>
</html>