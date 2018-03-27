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

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  

		HttpSession session = request.getSession(false);

		String username = (String) session.getAttribute("name");
		String password = (String) session.getAttribute("pass");
		String cat = request.getParameter("cat");
		String content =  request.getParameter("content");
		String topic = request.getParameter("topic");
		int lastpage = Integer.valueOf(request.getParameter("lastpage"));

		if(topic == null) {

			RequestDispatcher rd=request.getRequestDispatcher("newpost.jsp");  
			rd.forward(request,response);
		}

<<<<<<< HEAD
		String values[] = {username,password,"asianfood", topic,content};
=======
		String values[] = 
			{
					username,password,cat, topic,content
			};
>>>>>>> refs/remotes/origin/Kha

<<<<<<< HEAD
		if(Post.validate(values))
		{  
			out.print("<p style=\"color:red; text-align:center;\">Posted</p>");  
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
			rd.forward(request,response);  
=======
		if(Post.validate(values)){  
			String pagename = "display?topic=asianfoods&page=" + lastpage;  
			response.sendRedirect(pagename);
>>>>>>> refs/remotes/origin/Kha
		}  
<<<<<<< HEAD
		else
		{  
			out.print("<p style=\"color:red; text-align:center;\">Signup Error</p>");  
			RequestDispatcher rd=request.getRequestDispatcher("signup.jsp");  
			rd.include(request,response);  
=======
		else{  
			String message = "Error! Failed to submit post";
			request.setAttribute("message", message);
			request.getRequestDispatcher("newpost.jsp").forward(request, response);
>>>>>>> refs/remotes/origin/Kha
		}  
		out.close();  
	}  
}
