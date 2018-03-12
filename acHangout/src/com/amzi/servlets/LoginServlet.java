package com.amzi.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amzi.dao.Login;



public class LoginServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  

		String n=request.getParameter("username");  
		String p=request.getParameter("pass"); 
		HttpSession session = request.getSession(false);
		if(session!=null) {
			session.setAttribute("name", n);
			session.setAttribute("pass", p);
		}

		if(Login.validate(n, p)){  
			String pagename = (String) session.getAttribute("currentpage");
			if(pagename == null) 
				pagename = "index.jsp";

			RequestDispatcher rd=request.getRequestDispatcher(pagename);  
			rd.forward(request,response);  
		}  
		else{  
			String message ="Sorry username or password error";
			request.setAttribute("message", message);
			//out.print("<p style=\"color:red\">Sorry username or password error</p>");  
			request.getRequestDispatcher("login.jsp").forward(request, response); 
		}  

		out.close();  
	}  
}

