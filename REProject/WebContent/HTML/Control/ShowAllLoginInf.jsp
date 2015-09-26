<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="DbDriver.*,Login.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/REProject/css/bootstrap.min.css" />
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script src="/REProject/js/bootstrap.min.js"></script>
<title>ShowAllLoginInf</title>
<script type="text/javascript">
	function True(){
		return confirm("是否删除？");
	}
</script>
</head>
<body>
<table class="table table-bordered">
<tr>
	<td>编号</td>
	<td>用户名</td>
	<td>密码</td>
	<td>身份</td>
	<td>操作1</td>
	<td>操作2</td>
</tr>
<%
	LinkedList <LoginInf> ll = new DbRead().dbReadAll();
if(ll == null){
	System.out.println("无记录！");
}else{
	Iterator <LoginInf> iter = ll.iterator();
	LoginInf li = new LoginInf();
	while(iter.hasNext()){
		li = iter.next();%>
	<tr>
	<td><%=li.getLoginId() %></td>
	<td><%=li.getLoginName() %></td>
	<td><%=li.getLoginPswd() %></td>
	<%if(li.getLoginIDN() == 1){ %>
		<td>管理员</td>
	<%}else{%>
	<td>会员</td>
	<%}%>
	<form action="/REProject/HTML/Control/ChangeLogin.jsp" method="post">
	<td><button type="submit" class="btn btn-info" name="Change" value="<%=li.getLoginName()%>" >修改</button></td>
	</form>
	<form action="/REProject/HTML/Control/DeleteLogin.jsp" method="post">
	<td><button type="submit" class="btn btn-info" name="Delete" value="<%=li.getLoginName()%>" onclick="return True()">删除</button></td>
	</form>
	</tr>
	<%}
}
%>
</table>
</body>
</html>