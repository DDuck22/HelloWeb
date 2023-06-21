package com.yedam;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.board.BoardDao;
import com.yedam.board.BoardVO;

@WebServlet("/boardAdd")
public class AddBoardServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//title,writer,content
		String title = req.getParameter("title"); // <input name="title">
		String writer = req.getParameter("writer");
		String content = req.getParameter("content");
		
		BoardVO board = new BoardVO();
		board.setBrd_title(title);
		board.setBrd_writer(writer);
		board.setBrd_content(content);
		
		BoardDao dao = new BoardDao();
		boolean result = dao.add(board);
		if(result) {
			resp.sendRedirect("board/blist.jsp");
		} else {
			resp.sendRedirect("board/add.jsp");
		}
		
	}
	
}
