<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"  type="text/css"  href="/REProject/css/bootstrap.min.css" />
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script src="/REProject/js/bootstrap.min.js"></script>
<title>MovieShow</title>
</head>
<body>
<%
	HttpSession se = request.getSession();
	String LoginName = (String)se.getAttribute("LoginName");
	
%>
<div style="background-color: #66ccff" class="well well-lg">
	<div style="widht:50%">
		<h3>欢饮您，<%=LoginName %>!</h3>
	</div>
	<div style="float:left">
		<form action="/REProject/HTML/Control/LoginOut.jsp" method="post">
		<button class="btn btn-default" name="LoginOut">退出登陆</button>
		</form>
	</div>
</div>
</body>
</html>