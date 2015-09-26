<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="Login.*,DbDriver.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String LoginName = request.getParameter("LoginName");
String LoginPswd = request.getParameter("LoginPswd");
//System.out.println(LoginName+"    "+LoginPswd);
int re =  new LoginCheck(LoginName,LoginPswd).CheckLogin();
if(re == 0){%>
	<script type="text/javascript">
		alert("用户名不存在或用户名与密码不匹配！");
		window.location="/REProject/index.html";
	</script>
<%}else if(re == 1){
	response.setContentType("text/html; charset=utf-8"); 
	response.sendRedirect("/REProject/HTML/Control/Frame.html"); 
}else{
	HttpSession se = request.getSession();
	se.setAttribute("LoginName", LoginName);
	response.setContentType("text/html; charset=utf-8"); 
	response.sendRedirect("/REProject/HTML/Movie/MovieFrame.html"); 
}
%>
</body>
</html>