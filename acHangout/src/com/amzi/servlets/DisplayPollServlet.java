package com.amzi.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amzi.dao.PollDao;

import model.Poll;

public class DisplayPollServlet extends HttpServlet {

	private static final long serialVersionUID = 154L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		int row = 0, maxPoll = 15, numberofpage = 0, currentpage = 1;
		String tempPage, title;

		response.setContentType("text/html");  


		tempPage = request.getParameter("page");

		if(tempPage != null && !tempPage.isEmpty()) {
			currentpage= Integer.valueOf(tempPage);
		}

		if(row % maxPoll > 0)
			numberofpage = (row / maxPoll) + 1;
		else
			numberofpage = row / maxPoll;

		if(currentpage > numberofpage && numberofpage > 0)
			currentpage = numberofpage;

		ArrayList<Poll> list = PollDao.getRecords();

		request.setAttribute("List", list);


		request.setAttribute("numberofpage", numberofpage);
		request.setAttribute("currentpage", currentpage);


		RequestDispatcher rd = request.getRequestDispatcher("pollList.jsp");
		rd.include(request, response);

	}
}