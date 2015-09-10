<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="dbDriver.*"%>
<%@page import="loginInf.*"%>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="../bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ShowAllLoginInf</title>
<script type="text/javascript">
function check() {
	return confirm("是否删除？");
}
</script>
</head>
<body>
	<table class="table table-bordered">
		<tr>
			<td>用户编号</td>
			<td>用户名称</td>
			<td>用户昵称</td>
			<td>用户性别</td>
			<td>用户密码</td>
			<td>入学年份</td>
			<td>生日</td>
			<td>操作1</td>
			<td>操作2</td>
		</tr>
		<%
				LinkedList <LoginInf> ll = new LoginInfRead().getLoginInfAll();
				LoginInf li = new LoginInf();
				if (ll == null) {
					out.print("无记录！");
				} else {
					Iterator<LoginInf> it = ll.iterator();
					while(it.hasNext()){
						li = it.next();
		%>
		<tr>
			<td><%=li.getLoginId()%></td>
			<td><%=li.getLoginName()%></td>
			<td><%=li.getLoginNickName()%></td>
			<td>
				<%
					int sex = li.getLoginSex();
							if (sex == 1) {
								out.print("男");
							} else if (sex == 2) {
								out.print("女");
							} else {
								out.print("管理员");
							}
				%>
			</td>
			<td><%=li.getLoginPswd()%></td>
			<td><%=li.getLoginGrade()%></td>
			<td>
				<%
					out.print(li.getLoginYear() + "." + li.getLoginMonth() + "." + li.getLoginDay());
				%>
			</td>
			<td>
				<form method="get" action="/ServletTest/DealLoginInf/ChangeLoginInf.jsp">
					<button type="submit" name="Change" value="<%=li.getLoginId() %>"
						class="btn btn-info">修改</button>
				</form>
			</td>
			<td>
				<form method="get" action="/ServletTest/DealLoginInf/DeleteLoginInf.jsp">
					<button type="submit" name="Delete" value="<%=li.getLoginId()%>"
						class="btn btn-info" onclick="return check()">删除</button>
				</form>
			</td>
		</tr>
		<%
					}
			}
		%>
	</table>
</body>
</html>