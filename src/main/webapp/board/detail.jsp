<%@page import="com.yedam.board.BoardVO"%>
<%@page import="com.yedam.board.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board/detail.jsp</title>
</head>
<body>
	<!-- 글번호 한건조회 / 조회한 정보 페이지작성. -->
	<%
	String bid = request.getParameter("no");
	int bno = Integer.parseInt(bid);
	BoardDao dao = new BoardDao();
	BoardVO brd = dao.search(bno); // 단건조회.
	dao.clickCnt(brd);
	//null인지 체크.
	%>
	<table border='1'>
		<tr>
			<th>글번호</th>
			<td><%=brd.getBrd_no()%></td>
		</tr>
		<tr>
			<th>제목</th>
			<td><%=brd.getBrd_title()%></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><%=brd.getBrd_writer()%></td>
		</tr>
		<tr>
			<td colspan="2"><textarea readonly rows="3" cols="30"><%=brd.getBrd_content()%></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button onclick="location.href='modify.jsp?no=<%=brd.getBrd_no() %>'">수정</button>
				<button onclick="location.href='delete.jsp?no=<%=brd.getBrd_no() %>'">삭제</button>
			</td>
		</tr>
	</table>
	<br>
	<a href="blist.jsp">목록으로</a>
</body>
</html>