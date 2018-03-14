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


        String n=request.getParameter("username");  
        String p=request.getParameter("pass"); 
        String renember= request.getParameter("renemeber");
        
        HttpSession session = request.getSession(false);
        if(session!=null)
        session.setAttribute("name", n);
        
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		
		HttpSession session1 = request.getSession(false);
		if(session1!=null) {
			session1.setAttribute("name", n);
			session1.setAttribute("pass", p);
		}

		if(Login.validate(n, p)){  
			String pagename = (String) session1.getAttribute("currentpage");
			if(pagename == null) {
				String message ="login";
				request.setAttribute("message", message);
				pagename = "index.jsp";
			}
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

