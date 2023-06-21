<%@page import="com.yedam.board.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="com.yedam.board.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>blist.jsp</title>
</head>
<body>
	<h3>게시판</h3>
	<table border='1'>
		<thead>
			<tr>
				<th>글번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<%
			BoardDao dao = new BoardDao();
			List<BoardVO> list = dao.list();
			for (BoardVO brd : list) {
			%>
			<tr>
				<td><%=brd.getBrd_no()%></td>
				<td><a href="detail.jsp?no=<%=brd.getBrd_no()%>"><%=brd.getBrd_title() %></a></td>
				<td><%=brd.getBrd_writer() %></td>
				<td><%=brd.getClick_cnt() %></td>
			</tr>
			<%
			}
			%>

		</tbody>
	</table>
</body>
</html>