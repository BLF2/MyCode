<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="DbDriver.*,Movie.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	MovieInf mi = new MovieInf();
	mi.setMovieName(request.getParameter("MovieName"));
	String MovieName = mi.getMovieName();
	if(new DbRead().dbReadMovieInfByName(MovieName) != null){%>
		<script type="text/javascript">
			alert("此用户名已经存在！");
			window.location="/REProject/HTML/Control/AddMovie.html";
		</script>
	<%}else{
	mi.setMovieTime(request.getParameter("MovieTime"));
	mi.setMovieDirector(request.getParameter("MovieDirector"));
	mi.setMovieLeader(request.getParameter("MovieLeader"));
	mi.setMoviePop(Integer.parseInt(request.getParameter("MoviePop")));
	mi.setMovieCom(request.getParameter("MovieCom"));
	LinkedList <MovieInf> movie = new DbRead().dbReadMovieInfAll();
	int cnt = 1;
	Iterator <MovieInf> iter = movie.iterator();
	MovieInf ls = new MovieInf();
	while(iter.hasNext()){
		ls = iter.next();
		if(cnt != ls.getMovieId()){
			break;
		}
		cnt++;
	}
	mi.setMovieId(cnt);
	if(new DbInsert().dbInsertMovieInf(mi) > 0){%>
		<script type="text/javascript">
			alert("添加成功！");
			window.location="/REProject/HTML/Control/ShowAllMovieInf.jsp";
		</script>
	<%}else{%>
		<script type="text/javascript">
			alert("添加失败！");
			window.location="/REProject/HTML/Control/ShowAllMovieInf.jsp";
		</script>
	<%}
	}
%>
</body>
</html>