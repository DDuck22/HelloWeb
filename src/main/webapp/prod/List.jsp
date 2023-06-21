<%@page import="com.yedam.common.ProdVO"%>
<%@page import="java.util.List"%>
<%@page import="com.yedam.common.MallDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품목록</title>
</head>
<body>
	<ul>
		<%
		MallDao dao =new MallDao();
		List<ProdVO> list = dao.list();
		for (ProdVO vo : list){
	%>
		<li>상품코드: <%=vo.getNo() %></li>

		<%
		}
	%>
	</ul>
	<a href = "second">second servlet</a>
</body>
</html>