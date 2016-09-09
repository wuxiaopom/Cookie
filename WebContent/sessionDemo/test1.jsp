<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SessionPage</title>
</head>
<body>
		<%
			SimpleDateFormat sdf = new SimpleDateFormat("YYYY年MM月dd日  HH:mm:ss");
			Date d = new Date(session.getCreationTime());   //session创建的时间
			session.setAttribute("userName", "admin");
			session.setAttribute("password", "a");
			session.setAttribute("age", 20);
			session.setMaxInactiveInterval(5); //设置当前session最大生成期限  单位：秒
			//session.invalidate();   //设置session失效
		%>
		<%-- Session的创建时间： <%=sdf.format(d)%><br>
		Session的ID编号： <%=session.getId() %><br/>
		从Session中获取用户名：<%=session.getAttribute("userName") %><br> --%>
		<a href="test2.jsp" target="_blank">跳转到page2</a>
</body>
</html>