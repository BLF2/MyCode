<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="DbDriver.*,Movie.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	.color1{
	background-color: #CC00CC;
	float:left;
	width:24.99%;
	font-size:24px;
	}
	.color2{
	background-color: #99FF00;
	float:left;
	width:24.99%;
	font-size:24px;
	}
	.color3{
	background-color: #00FF00;
	float:left;
	width:24.99%;
	font-size:24px;
	}
	.color4{
	background-color: #ffd200;
	float:left;
	width:24.99%;
	font-size:24px;
	}
</style>
</head>
<body>
<%
	LinkedList <MovieInf> movie = new DbRead().dbReadAllMovieInfOrder();
	MovieInf mi = new MovieInf();
	Iterator <MovieInf> iter =movie.iterator();
	int i = 0;
	while(iter.hasNext()){
		mi = iter.next();%>
		<div class="color<%=i % 4 + 1 %>">
			<div>
				名字：<%=mi.getMovieName() %>
			</div>
			<div>
				上映时间：<%=mi.getMovieTime() %>
			</div>
			<div>
				导演：<%=mi.getMovieDirector() %>
			</div>
			<div>
				主演：<%=mi.getMovieLeader() %>
			</div>
			<div>
				人气值：<%=mi.getMoviePop() %>
			</div>
			<div>
				评论：<%=mi.getMovieCom() %>
			</div>
		</div>
	<%
	i++;
	}
%>
</body>
</html>