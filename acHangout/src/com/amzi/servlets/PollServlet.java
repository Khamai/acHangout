package com.amzi.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



public class PollServlet extends HttpServlet{
	
	private static final long serialVersionUID = 123L;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException { 
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		HttpSession session = request.getSession(false);
		int fieldNum = Integer.parseInt(request.getParameter("option"));
		
		out.println(fieldNum);
		
		
		out.close(); 
		
	}

}