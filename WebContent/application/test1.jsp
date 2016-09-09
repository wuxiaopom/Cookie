<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Aplication内置对象</title>
</head>
<body>
	<% 
		application.setAttribute("city", "衡阳");
		application.setAttribute("company", "源辰");
		application.setAttribute("tel", "8355998");
	%>
	
	
	所在城市：<%= application.getAttribute("company")%> 	
	application中的属性有:<% 	
		Enumeration attrs = application.getAttributeNames();
		while(attrs.hasMoreElements()){
			out.println(attrs.nextElement()+"&nbsp;&nbsp;");
		}
	%>
	<br>
	<%= application.getRealPath("login.jsp") %>   <%--返回相对路径的真实路径 --%>
</body>
</html>