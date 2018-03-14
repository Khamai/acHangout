package com.amzi.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amzi.dao.Signup;



public class PostServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  

		String values[] = 
			{
					request.getParameter("author"), request.getParameter("topic"),
					request.getParameter("category"),request.getParameter("content")
			};

		HttpSession session = request.getSession(false);
		
        if(Signup.validate(values)){  
        	out.print("<p style=\"color:red; text-align:center;\">Account Created</p>");  
            RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
            rd.forward(request,response);  
        }  
        else{  
            out.print("<p style=\"color:red; text-align:center;\">Signup Error</p>");  
            RequestDispatcher rd=request.getRequestDispatcher("signup.jsp");  
            rd.include(request,response);  
        }  

		for(int i = 0; i < values.length; ++i)
			if(session!=null)
				session.setAttribute(i+"", values[i]);

		if(Signup.validate(values)){  
			RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");  
			rd.forward(request,response);  
		}  
		else{  
			RequestDispatcher rd=request.getRequestDispatcher("signup.jsp");  
			rd.include(request,response);  
		}  

		out.close();  
	}  
}

