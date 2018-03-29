package com.amzi.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amzi.dao.PostComment;



public class PostCommentServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  

		HttpSession session = request.getSession(false);

		String username = (String) session.getAttribute("name");
		String password = (String) session.getAttribute("pass");
		String content =  request.getParameter("content");
		String postId = request.getParameter("postid");

		String values[] = 
			{
					username,password,content, postId
			};

		if(PostComment.add(values)){  
			String pagename = "comment?q=" + postId;  
			response.sendRedirect(pagename);
		}  
		else{  
			String message = "Error! Failed to submit comment";
			request.setAttribute("message", message);
			request.getRequestDispatcher("comment.jsp").forward(request, response);
		}  
		out.close();  
	}  
}
