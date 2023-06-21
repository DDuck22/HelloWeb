<%@page import="com.yedam.board.BoardVO"%>
<%@page import="com.yedam.board.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/modify.jsp</title>
</head>
<body>
	<%
	String bid = request.getParameter("no");
	int bno = Integer.parseInt(bid);
	BoardDao dao = new BoardDao();
	BoardVO brd = dao.search(bno);
	%>
	<form action = "../modify">
		<table border='1'>
			<tr>
				<th>글번호</th>
				<td><input type="text" readonly value=<%=brd.getBrd_no()%> name="no"></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" value=<%=brd.getBrd_title()%> name="title"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><%=brd.getBrd_writer()%></td>
			</tr>
			<tr>
				<td colspan="2"><textarea rows="3" cols="30" name="content"><%=brd.getBrd_content()%></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit">수정</button>
					<button
						onclick="location.href='detail.jsp?no=<%=brd.getBrd_no()%>'">취소</button>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>