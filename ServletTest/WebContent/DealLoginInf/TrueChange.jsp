<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="dbDriver.*,loginInf.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>TureChange</title>
</head>
<body>
<%
LoginInf li = new LoginInf();
li.setLoginId(Integer.parseInt(request.getParameter("ChangeLoginInf")));
li.setLoginName(request.getParameter("LoginName"));
li.setLoginNickName(request.getParameter("LoginNickName"));
li.setLoginSex(Integer.parseInt(request.getParameter("LoginSex")));
li.setLoginPswd(request.getParameter("LoginPswd"));
li.setLoginGrade(Integer.parseInt(request.getParameter("LoginGrade")));
li.setLoginYear(Integer.parseInt(request.getParameter("LoginYear")));
li.setLoginMonth(Integer.parseInt(request.getParameter("LoginMonth")));
li.setLoginDay(Integer.parseInt(request.getParameter("LoginDay")));
if((new LoginInfChange().ChangeLoginInf(li) > 0)){%>
	<script type="text/javascript">
		alert("修改成功！");
		window.location="/ServletTest/DealLoginInf/ShowAllLoginInf.jsp";
	</script>
<%}else{%>
	<script type="text/javascript">
	alert("修改失败！");
	window.location="/ServletTest/DealLoginInf/ShowAllLoginInf.jsp";
	</script>
<%}
%>
%>
</body>
</html>