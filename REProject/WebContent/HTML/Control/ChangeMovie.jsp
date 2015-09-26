<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="DbDriver.*,Movie.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="/REProject/css/bootstrap.min.css" />
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script src="/REProject/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ChangeMovie</title>
<script type="text/javascript">
function check() {
	return confirm("是否确认修改？");
}
</script>
</head>
<body>
<%
	String MovieName = request.getParameter("ChangeMovie");
	MovieInf mi = new DbRead().dbReadMovieInfByName(MovieName);
	%>
<form action="/REProject/HTML/Control/ChangeMovieTrue.jsp" method="post">
<table class="table">
<tr>
	<td>电影名：</td>
	<td><input type="text" name="MovieName" readonly="readonly" value="<%=mi.getMovieName()%>"/></td>
</tr>
<tr>
	<td>上映时间:(格式：年/月)</td>
	<td><input type="text" name="MovieTime" required="required" value="<%=mi.getMovieTime() %>"></td>
</tr>
<tr>
	<td>导演：</td>
	<td><input type="text" name="MovieDirector" required="required" value="<%=mi.getMovieDirector() %>"></td>
</tr>
<tr>
	<td>主演：</td>
	<td><input type="text" name="MovieLeader" required="required" value="<%=mi.getMovieLeader() %>"></td>
</tr>
<tr>
	<td>人气值：</td>
	<td><input type="text" name="MoviePop" required="required" value="<%=mi.getMoviePop() %>"></td>
</tr>
<tr>
	<td>评论：</td>
	<td><textarea class="form-control" rows="3" name="MovieCom" ><%=mi.getMovieCom() %></textarea></td>
</tr>
<tr>
	<td style="text-align: center;"><button type="submit" name="Submit"  value="<%=mi.getMovieId() %>"class="btn btn-info" onclick="return check()">修改</button></td>
	<td align="center"><button type="reset" class="btn btn-info">重置</button></td>
</tr>
</table>
</form>
</body>
</html>