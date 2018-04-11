package com.amzi.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amzi.dao.Extract;

public class ExtractServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		int currentpage = 1;
		response.setContentType("text/html");  


		//currentpage= Integer.valueOf(request.getParameter("page"));

		HttpSession session = request.getSession(false);

		//String cat = request.getParameter("topic");
		List<List<String>> list = Extract.getRecords("Select * From users LEFT JOIN profile ON users.id=profile.id",8);		
		
		//ArrayList<DisplayList> List = Display.getRecord(cat,currentpage);
		request.setAttribute("List", list);

		//request.setAttribute("numberofpage", numberofpage);
		//request.setAttribute("currentpage", currentpage);


		RequestDispatcher rd = request.getRequestDispatcher("users.jsp");
		rd.include(request, response);
	}
}
