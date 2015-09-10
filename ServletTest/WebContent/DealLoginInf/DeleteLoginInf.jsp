<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="dbDriver.*,loginInf.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DeleteLoginInf</title>
</head>
<body>
<%
	int id =Integer.parseInt(request.getParameter("Delete"));
	if(id == 1){%>
	<script type="text/javascript">
		alert("管理员账号无法删除！");
		window.location="/ServletTest/DealLoginInf/ShowAllLoginInf.jsp";
	</script>
	<%}else{
		new LoginInfDelete().DeleteLoginInf(id);%>
		<script type="text/javascript">
			alert("删除成功！");
			window.location="/ServletTest/DealLoginInf/ShowAllLoginInf.jsp";
		</script>
		<%}
%>
</body>
</html>