<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="DbDriver.*,Movie.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	MovieInf mi = new MovieInf();
	mi.setMovieId(Integer.parseInt(request.getParameter("Submit")));
	mi.setMovieName(request.getParameter("MovieName"));
	mi.setMovieTime(request.getParameter("MovieTime"));
	mi.setMovieDirector(request.getParameter("MovieDirector"));
	mi.setMovieLeader(request.getParameter("MovieLeader"));
	mi.setMoviePop(Integer.parseInt(request.getParameter("MoviePop")));
	mi.setMovieCom(request.getParameter("MovieCom"));
	if(new DbUpdate().dbUpdateMovieInf(mi) > 0){%>
		<script type="text/javascript">
			alert("修改成功！");
			window.location="/REProject/HTML/Control/ShowAllMovieInf.jsp";
		</script>
	<%}else{%>
		<script type="text/javascript">
			alert("修改失败！");
			window.location="/REProject/HTML/Control/ShowAllMovieInf.jsp";
		</script>
	<%}
%>

</body>
</html>