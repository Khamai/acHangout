package com.amzi.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amzi.bean.CommentList;
import com.amzi.dao.Comment;

public class CommentServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		int total = 0;
		response.setContentType("text/html");  


		int topicId = Integer.valueOf(request.getParameter("q"));


		ArrayList<CommentList> List = Comment.getRecord(topicId); 
		request.setAttribute("List", List);

		total = Comment.totalComment(topicId);
		request.setAttribute("total", total);


		RequestDispatcher rd = request.getRequestDispatcher("comment.jsp");
		rd.include(request, response);

	}
}