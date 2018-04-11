package com.amzi.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amzi.dao.EditProfile;

public class EditProfileServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  

		HttpSession session = request.getSession(false);

		String username = (String) session.getAttribute("name");
		String password = (String) session.getAttribute("pass");
		String firstname =  request.getParameter("first");
		String lastname = request.getParameter("last");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");


		String values[] = {username,password,firstname, lastname,email,phone};

		if(EditProfile.update(values)){ 
			String message = "pass";
			request.setAttribute("message", message);
			request.getRequestDispatcher("accountsettings.jsp").forward(request, response);
		}  
		else{  
			String message = "fail";
			request.setAttribute("message", message);
			request.getRequestDispatcher("accountsettings.jsp").forward(request, response);
		}  
		out.close();  
	}  
}
