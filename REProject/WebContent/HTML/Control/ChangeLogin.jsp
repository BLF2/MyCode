<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="DbDriver.*,Login.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/REProject/css/bootstrap.min.css" />
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script src="/REProject/js/bootstrap.min.js"></script>
<title>AddLogin</title>
<script type="text/javascript">
function  check(){
	var pswd1 = document.form1.NewPswd.value;
	var pswd2 = document.form1.NewPswd1.value;
	if(pswd1 == pswd2){
	return confirm("是否确认修改？");
}else{
	alert("密码不匹配！");
	return false;
}
}
</script>
</head>
<body>
	<%
		String LoginName = request.getParameter("Change");
		LoginInf li = new DbRead().dbReadByName(LoginName);
	%>
	<div>提示：所有项目为必填项目！</div>
	<form action="/REProject/HTML/Control/ChangeLoginTrue.jsp" method="post"
		name="form1">
		<table class="table table-bordered">
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="NewName" readonly="readonly"
					value="<%=li.getLoginName()%>" /></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input type="password" id="p1" name="NewPswd"
					required="required" value="<%=li.getLoginPswd()%>" /></td>
			</tr>
			<tr>
				<td>确认密码：</td>
				<td><input type="password" id="p2" name="NewPswd1"
					required="required" value="<%=li.getLoginPswd()%>" /></td>
			</tr>
			<tr>
				<td>权限：</td>
				<td>
					<%
						if (li.getLoginIDN() == 1) {
					%> <input type="radio" name="IDN" value="1"
					checked="checked" />管理员 <input type="radio" name="IDN" value="2" />会员
					<%
 	} else {
 %> <input type="radio" name="IDN" value="1" />管理员 <input
					type="radio" name="IDN" value="2" checked="checked" />会员 <%
 	}
 %>
				</td>
			</tr>
			<tr>
				<td><button type="submit" name="Submit" value="<%=li.getLoginName() %>"
						onclick="return check()">提交</button></td>
				<td><button type="reset">重置</button></td>
			</tr>
		</table>
	</form>

</body>
</html>