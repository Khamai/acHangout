package com.amzi.servlets;

import java.io.IOException;  
import java.io.PrintWriter;  
<<<<<<< HEAD
  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
public class LogoutServlet extends HttpServlet {  
	private static final long serialVersionUID = 1L;

		protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                                throws ServletException, IOException {  
            response.setContentType("text/html");  
            PrintWriter out=response.getWriter();  
              
            request.getRequestDispatcher("link.html").include(request, response);  
              
            HttpSession session=request.getSession();  
            session.invalidate();  
              
            out.print("You are successfully logged out!");  
              
            out.close();  
    }  
}  
=======

import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
public class LogoutServlet extends HttpServlet {  
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  
		response.setContentType("text/html");  
		PrintWriter out=response.getWriter();  


		HttpSession session=request.getSession();  
		session.invalidate();  

		String message ="You are successfully logged out!";
		request.setAttribute("message", message);
		request.getRequestDispatcher("index.jsp").forward(request, response); 

		out.close();  
	}  
}  