<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="DbDriver.*,Login.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DeleteLogin</title>
</head>
<body>
<%
	String LoginName = request.getParameter("Delete");
	LoginInf li = new LoginInf();
	li.setLoginName(LoginName);
	if(new DbDelete().dbDelete(li) > 0){%>
	<script type="text/javascript">
		alert("删除成功！");
		window.location="/REProject/HTML/Control/ShowAllLoginInf.jsp";
	</script>
		
	<%}else{%>
		<script type="text/javascript">
		alert("删除失败！");
		window.location="/REProject/HTML/Control/ShowAllLoginInf.jsp";
	</script>
	<%}
%>
</body>
</html>