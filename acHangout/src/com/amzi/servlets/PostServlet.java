package com.amzi.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amzi.dao.Post;



public class PostServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  

		HttpSession session = request.getSession(false);

		String username = (String) session.getAttribute("name");
		String password = (String) session.getAttribute("pass");
		

		String values[] = 
			{
					username,password,
					request.getParameter("category"), request.getParameter("topic"),
					request.getParameter("content")
			};

		if(Post.validate(values)){  
			out.print("<p style=\"color:red; text-align:center;\">Posted</p>");  
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
			rd.forward(request,response);  
		}  
		else{  
			out.print("<p style=\"color:red; text-align:center;\">Signup Error</p>");  
			RequestDispatcher rd=request.getRequestDispatcher("signup.jsp");  
			rd.include(request,response);  
		}  
		out.close();  
	}  
}
