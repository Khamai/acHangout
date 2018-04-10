package com.amzi.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amzi.dao.Rating;

public class RatingServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1500130484127461522L;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {
		
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter(); 
		
		HttpSession session = request.getSession(false);

		String username = (String) session.getAttribute("name");
		String password = (String) session.getAttribute("pass");
		int choice = Integer.parseInt(request.getParameter("choice"));
		String postid = request.getParameter("postid");
		
		String values[] = {username,password,postid};	
		if(Rating.validate(values, choice)){  
			System.out.println("success");
		}  
		else{  
			String message = "Error! Failed to submit post";
			request.setAttribute("message", message);
			request.getRequestDispatcher("newpost.jsp").forward(request, response);
		}  
		out.close();  
	}  
}