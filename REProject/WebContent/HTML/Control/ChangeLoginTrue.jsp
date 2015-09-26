<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="DbDriver.*,Login.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	LoginInf li = new LoginInf();
	String LoginName = request.getParameter("Submit");
	LoginInf ll = new DbRead().dbReadByName(LoginName);
	li.setLoginName(ll.getLoginName());
	li.setLoginId(ll.getLoginId());
	li.setLoginPswd(request.getParameter("NewPswd"));
	li.setLoginIDN(Integer.parseInt(request.getParameter("IDN")));
	if(new DbUpdate().dbUpdate(li) > 0){%>
		
		<script type="text/javascript">
		alert("修改成功！");
		window.location="/REProject/HTML/Control/ShowAllLoginInf.jsp";
		</script>
		
	<%}else{%>
		<script type="text/javascript">
		alert("修改失败，未知错误！");
		window.location="/REProject/HTML/Control/ShowAllLoginInf.jsp";
		</script>
		
	<%}
%>
</body>
</html>