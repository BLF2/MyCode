<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="dbDriver.*" %>
    <%@page import="loginInf.LoginInf" %>
    <%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>InsertLoginInf</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	LoginInf li = new LoginInf();
	li.setLoginName(request.getParameter("LoginName"));
	if(new LoginInfRead().getLoginInf(li.getLoginName()) != null){%>
		<script type="text/javascript">
			alert("用户名已经存在！");
			window.location="/ServleTest/LoginInf/AddLoginInf.html";
		</script>
	<%}
	
	li.setLoginId(new LoginInfRead().getLoginNewId());
	li.setLoginNickName(request.getParameter("LoginNickName"));
	li.setLoginSex(Integer.parseInt(request.getParameter("LoginSex")));
	li.setLoginPswd(request.getParameter("LoginPswd"));
	li.setLoginGrade(Integer.parseInt(request.getParameter("LoginGrade")));
	li.setLoginYear(Integer.parseInt(request.getParameter("LoginYear")));
	li.setLoginMonth(Integer.parseInt(request.getParameter("LoginMonth")));
	li.setLoginDay(Integer.parseInt(request.getParameter("LoginDay")));
	if((new LoginInfInsert().InsertLoginInf(li))>0){%>
		<script type="text/javascript">
			alert("添加成功！");
			window.location="/ServletTest/DealLoginInf/ShowAllLoginInf.jsp";
		</script>
	<%}else{%>
		<script type="text/javascript">
		alert("添加失败！");
		window.location="/ServletTest/LoginInf/AddLoginInf.html";
		</script>
	<%}
	
%>
</body>
</html>