<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="DbDriver.*,Movie.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String MovieName = request.getParameter("DeleteMovie");
	MovieInf mi = new MovieInf();
	mi.setMovieName(MovieName);
	if(new DbDelete().dbDeleteMovieInf(mi) > 0){%>
		<script type="text/javascript">
			alert("删除成功！");
			window.location="/REProject/HTML/Control/ShowAllMovieInf.jsp";
		</script>
	<%}else{%>
		<script type="text/javascript">
			alert("删除失败！");
			window.location="/REProject/HTML/Control/ShowAllMovieInf.jsp";
		</script>
	<%}
%>
</body>
</html>