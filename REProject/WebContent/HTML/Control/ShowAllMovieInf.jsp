<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "DbDriver.*,Movie.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/REProject/css/bootstrap.min.css" />
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script src="/REProject/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
function check() {
	return confirm("确认删除？");
}
</script>
</head>
<body>
<%
	LinkedList <MovieInf> movie = new DbRead().dbReadMovieInfAll();
%>
<table class="table table-bordered">
<tr>
	<td>电影ID</td>
	<td>电影名</td>
	<td>上映时间</td>
	<td>导演</td>
	<td>主演</td>
	<td>人气值</td>
	<td>评论</td>
	<td>操作1</td>
	<td>操作2</td>
</tr>
<%
if(movie != null && movie.size() > 0){
	Iterator <MovieInf> iter = movie.iterator();
	MovieInf mi = new MovieInf();
	while(iter.hasNext()){
		mi = iter.next();%>
		<tr>
		<td><%=mi.getMovieId() %></td>
	<td><%=mi.getMovieName() %></td>
	<td><%=mi.getMovieTime() %></td>
	<td><%=mi.getMovieDirector() %></td>
	<td><%=mi.getMovieLeader() %></td>
	<td><%=mi.getMoviePop() %></td>
	<td><%=mi.getMovieCom() %></td>
	<form action="/REProject/HTML/Control/ChangeMovie.jsp" method="post">
	<td><button type="submit" name="ChangeMovie" value="<%=mi.getMovieName() %>" class="btn btn-primary">修改</button></td>
	</form>
	<form action="/REProject/HTML/Control/DeleteMovie.jsp" method="post">
	<td><button type="submit" name="DeleteMovie" value="<%=mi.getMovieName() %>" class="btn btn-primary" onclick="return check()">删除</button></td>
	</form>
	</tr>
	<%}
}else{%>
	无记录！
<%}%>
</table>

</body>
</html>