<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'getCookies.jsp' starting page</title>
  </head>
  
  <body>
    <%
		Cookie[] cookies = request.getCookies();
		String user="";
		String pwd = "";
		if(cookies!=null){
			for(int i=0;i<cookies.length;i++){
				if(cookies[i].getName().equals("username"))
					user = cookies[i].getValue();
				else if(cookies[i].getName().equals("password"))
					pwd = cookies[i].getValue();
			}
		}
		out.print("ÓÃ»§Ãû£º"+user+" £¬ÃÜÂë£º "+pwd);
	%>

  </body>
</html>
