package com.amzi.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amzi.bean.DisplayPostList;
import com.amzi.dao.DisplayPost;
import com.amzi.dao.DisplaySub;

public class DisplayPostServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		int row = 0, maxPost = 15, numberofpage = 0, currentpage = 1;
		String tempPage, title;

		response.setContentType("text/html");  


		tempPage = request.getParameter("page");

		if(tempPage != null && !tempPage.isEmpty()) {
			currentpage= Integer.valueOf(tempPage);
		}

		String cat = request.getParameter("sub");

		title = DisplayPost.title(cat);

		if(title == "") 
			response.sendRedirect("Error.jsp");

		HttpSession session = request.getSession(false);

		if(session!=null) 
			session.setAttribute("title", title);

		row = DisplayPost.totalPost(cat);

		if(row % maxPost > 0)
			numberofpage = (row / maxPost) + 1;
		else
			numberofpage = row / maxPost;

		if(currentpage > numberofpage && numberofpage > 0)
			currentpage = numberofpage;

		ArrayList<DisplayPostList> List = DisplayPost.getRecord(cat,currentpage); 
		request.setAttribute("List", List);


		request.setAttribute("numberofpage", numberofpage);
		request.setAttribute("currentpage", currentpage);


		RequestDispatcher rd = request.getRequestDispatcher("PostList.jsp");
		rd.include(request, response);

	}
}