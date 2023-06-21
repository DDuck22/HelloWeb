<%@page import="com.yedam.board.BoardVO"%>
<%@page import="com.yedam.board.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String bid = request.getParameter("no");
	int bno = Integer.parseInt(bid);
	BoardDao dao = new BoardDao();
	boolean result = dao.remove(bno);
	response.sendRedirect("blist.jsp");
	%>
</body>
</html>