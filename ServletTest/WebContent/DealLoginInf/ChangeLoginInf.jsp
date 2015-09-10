<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="dbDriver.*,loginInf.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ChangeLoginInf</title>
<script type="text/javascript">
	function check(){
		return confirm("确定修改？");
	}
</script>
</head>
<body>
<%
LoginInf li = new LoginInfRead().getLoginInf(Integer.parseInt(request.getParameter("Change")));
if(li != null){
	if(li.getLoginId() == 1){%>
		<script type="text/javascript">
			alert("超级管理员信息不能修改！");
			window.location="/ServletTest/DealLoginInf/ShowAllLoginInf.jsp";
		</script>
	<%}
%>
	<form method="post" action="/ServletTest/DealLoginInf/TrueChange.jsp">
		<div>提示：所有项目均为必填项目！！！！</div>
		<div style="width: 100%">
			<table class="table table-bordered">
				<tr>
					<td>用户名：</td>
					<td><input type="text" maxlength="16" name="LoginName"
						required="required"  value="<%=li.getLoginName()%>" readonly="readonly"/></td>
				</tr>
				<tr>
					<td>昵称：</td>
					<td><input type="text" name="LoginNickName"
						required="required" value="<%=li.getLoginNickName() %>"/></td>
				</tr>
				<tr>
					<td>性别：</td>
					<td>
					<%
						int sex = li.getLoginSex();
						if(sex == 1){
					%>
					<input type="radio" checked="checked" name="LoginSex" value="1" />男
					<%}else{ %>
						<input type="radio" name="LoginSex" value="1" />男
					<%} if(sex == 2){%>
						<input type="radio" checked="checked" name="LoginSex" value="2" />女
						<%}else{ %>
						<input type="radio"  name="LoginSex" value="2" />女
						<%}if(sex == 3){ %>
						<input type="radio" checked="checked" name="LoginSex" value="3" />管理员
					<%}else{ %>
						<input type="radio"  name="LoginSex" value="3" />管理员
					<%} %>
					</td>
				</tr>
				<tr>
					<td>密码：</td>
					<td><input type="text" maxlength="16" name="LoginPswd"
						required="required"  value="<%=li.getLoginPswd()%>"/></td>
				</tr>
				<tr>
					<td>确认密码：</td>
					<td><input type="text" maxlength="16" name="LoginPswdT"
						required="required" value="<%=li.getLoginPswd()%>"/></td>
				</tr>
				<tr>
					<td>入学年份：（四位数，在1990至今年之间）</td>
					<td><input type="number" maxlength="4" name="LoginGrade"
						required="required"  value="<%=li.getLoginGrade()%>"/></td>
				</tr>
				<tr>
					<td>生日：</td>
					<td>
						<table class="table table-bordered">
							<tr>
								<td>年：</td>
								<td><input type="number" maxlength="4" name="LoginYear"
									required="required" value="<%=li.getLoginYear()%>" /></td>
							</tr>
							<tr>
								<td>月：</td>
								<td><input type="number" maxlength="2" name="LoginMonth"
									required="required" value="<%=li.getLoginMonth()%>"/></td>
							</tr>
							<tr>
								<td>日：</td>
								<td><input type="number" maxlength="2" name="LoginDay" required="required" value="<%=li.getLoginDay()%>"/></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
		<div>
			<div style="float: left;">
				<button type="submit" name="ChangeLoginInf" value="<%=li.getLoginId() %>"
					class="btn btn-info"  onclick="return check()">修改</button>
			</div>
			<div style="float: left;">
				<button type="reset" class="btn btn-info">重置</button>
			</div>
		</div>
	</form>
<%}else{ %>
<script type="text/javascript">
	alert("读取信息错误！");
	window.location="/ServletTest/DealLoginInf/ShowAllLoginInf.jsp";
</script>
<%} %>
</body>
</html>