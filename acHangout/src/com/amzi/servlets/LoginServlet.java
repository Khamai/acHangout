package com.amzi.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

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
        String pass = "";
        
        
        HttpSession session = request.getSession(false);
        if(session!=null)
        session.setAttribute("name", n);
        
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		
		pass = Login.validate(n, p);
        if(pass != ""){  
        	session.setAttribute("username", n);
        	session.setAttribute("pass", pass);
        	
            RequestDispatcher rd=request.getRequestDispatcher("Sections/index.jsp");
            rd.forward(request,response);  
        }  
        else{  
            out.print("<p style=\"color:red; text-align:center\">Sorry username or password error</p>");  
            RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
            rd.include(request,response);  
        } 

		out.close();  
	}
}

