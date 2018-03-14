package com.amzi.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amzi.dao.GetPosts;

public class GetPostsServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  


        String n=request.getParameter("page");  
        
        HttpSession session = request.getSession(false);
        if(session!=null)
        session.setAttribute("page", n);
        
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		
        if(GetPosts.GetPosts()){  


        }  
        else{  
            out.print("<p style=\"color:red; text-align:center\">Sorry username or password error</p>");  
            RequestDispatcher rd=request.getRequestDispatcher("Sections/login.jsp");  
            rd.include(request,response);  
        } 

		out.close();  
	}
}
