<%@ page pageEncoding = "UTF-8"%>
<% 
	String strLogin=(String)session.getAttribute("login");
	if (strLogin!=null && strLogin.equals("OK"))
	{
		out.println("<h2>欢迎进入我们的网站!</h2>");
	}
	else
	{
		out.println("<h2>请先登录,谢谢!</h2>");
		out.println("<h2>5秒钟后,自动跳转到登录页面!</h2>");
		response.setHeader("Refresh","5;URL=login.jsp");
	}
 %>