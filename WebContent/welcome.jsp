<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>My JSP 'welcome.jsp' starting page</title>
  </head>
  
  <body>
    <%
		//��ȡ�����е�Cookie�������鷽ʽ����
		Cookie cookies[]=request.getCookies();
		//ѭ���������飬�õ�keyΪ��uname����Cookie
		for(int i=0;i<cookies.length;i++){
			Cookie ucookie=cookies[i];
			if(ucookie.getName().equals("uname"))//�ж�Cookie������
				//��ȡkey��Ӧ��value�������ʾ
				out.println("��ӭ�㣺 "+ucookie.getValue());
		}
	%> 

  </body>
</html>
