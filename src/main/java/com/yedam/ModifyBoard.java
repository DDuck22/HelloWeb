package com.yedam;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.board.BoardDao;
import com.yedam.board.BoardVO;

@WebServlet("/modify")
public class ModifyBoard extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int no = Integer.parseInt(req.getParameter("no"));
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		BoardVO brd = new BoardVO();
		brd.setBrd_no(no);
		brd.setBrd_title(title);
		brd.setBrd_content(content);
		
		BoardDao dao = new BoardDao();
		boolean result = dao.modify(brd);
		if(result) {
			resp.sendRedirect("board/detail.jsp?no="+no);
		}
	
	}
	
}
