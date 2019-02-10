/***************************************************************************************************
 * SignupServlet - To let user sign up their new account
 * @since       1.0
***************************************************************************************************/
package com.amzi.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amzi.dao.Signup;

public class SignupServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	/**
	 * Gets all fields from the signup form and sends it to the signup dao
	 * @param request provides request information from client to a servlet
	 * @param response provides information to send to the client
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  

		String values[] = 
			{
					request.getParameter("firstname"), request.getParameter("lastname"),
					request.getParameter("username"),request.getParameter("pass"),
					request.getParameter("email"),request.getParameter("tel"),
					request.getParameter("sex")
			};

		if(Signup.validate(values)){  
			String message ="signup";
			request.setAttribute("message", message);
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
			rd.forward(request,response);  
		}  
		else{  
			RequestDispatcher rd=request.getRequestDispatcher("signup.jsp");  
			rd.include(request,response);  
		}  

		out.close();  
	}  
}

