<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	  Integer i = (Integer)application.getAttribute("count");
	  out.println("统计访问量：目前有 " + i +" 个人访问过本网站" );
%>

