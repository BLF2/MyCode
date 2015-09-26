<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="DbDriver.*,Login.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String LoginName=request.getParameter("NewName");
LoginInf li = new DbRead().dbReadByName(LoginName);
if(li != null){%>
	<script type="text/javascript">
		alert("用户名已经存在！");
		widow.location="/REProject/HTML/Control/AddLogin1.html";
	</script>
<%}else{
	LoginInf ll = new LoginInf();
	ll.setLoginName(request.getParameter("NewName"));
	ll.setLoginPswd(request.getParameter("NewPswd"));
	ll.setLoginIDN(Integer.parseInt(request.getParameter("IDN")));
	List <LoginInf> list = new DbRead().dbReadAll();
	Iterator <LoginInf> iter = list.iterator();
	LoginInf ls = new LoginInf();
	int cnt = 1;
	while(iter.hasNext()){
		ls = iter.next();
		if(ls.getLoginId() == cnt){
			cnt++;
		}else{
			break;
		}
	}
	ll.setLoginId(cnt);
	if(new DbInsert().dbInsert(ll) > 0){%>
		<script type="text/javascript">
			alert("添加成功！");
			window.location="/REProject/HTML/Control/AddLogin1.html";
		</script>
	<%}else{%>
		<script type="text/javascript">
			alert("添加失败！");
			window.location="/REProject/HTML/Control/AddLogin1.html";
		</script>
	<%}
}
%>
</body>
</html>