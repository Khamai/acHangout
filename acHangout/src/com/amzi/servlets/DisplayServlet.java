package com.amzi.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amzi.bean.DisplayList;
import com.amzi.dao.Display;

public class DisplayServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		int row = 0, maxPost = 15, numberofpage = 0, currentpage = 1;
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  

		HttpSession session = request.getSession(false);

		currentpage= Integer.valueOf(request.getParameter("page"));
		
		if(currentpage == 0)
			currentpage = 1;

		String cat = request.getParameter("topic");

		//	if(session!=null)
		//	session.setAttribute("page", n);

		ArrayList<DisplayList> List = Display.getRecord(cat,currentpage); 
		request.setAttribute("List", List);


		row = Display.totalPost(cat);

		if(row % maxPost > 0)
			numberofpage = (row / maxPost) + 1;
		else
			numberofpage = row / maxPost;

		request.setAttribute("numberofpage", numberofpage);
		request.setAttribute("currentpage", currentpage);


		RequestDispatcher rd = request.getRequestDispatcher("asianfoods.jsp");
		rd.include(request, response);

		out.close();  
	}
}