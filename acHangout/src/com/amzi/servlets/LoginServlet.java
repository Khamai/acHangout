/**
 * LoginServlet class - handles logins from the website
 */
package com.amzi.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amzi.dao.Login;

public class LoginServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	/**
	 * 	Gets username, password, and captcha results information to send to the database
	 * @param request provides request information from client to a servlet
	 * @param response provides information to send to the client
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		response.setContentType("text/html");  

		String n=request.getParameter("username");  
		String p=request.getParameter("pass"); 
		String gRecaptchaResponse = request.getParameter("g-recaptcha-response");
		String pass = "";


		HttpSession session = request.getSession(false);
		pass = Login.validate(n, p);
		if(session!=null) {
			session.setAttribute("name", n);
			session.setAttribute("pass", pass);
		}

		if(pass != null){  
			String pagename = (String) session.getAttribute("directpage");
			if(pagename == null) {
				String message ="login";
				request.setAttribute("message", message);
				request.getRequestDispatcher("index.jsp").forward(request, response); 
			}
			response.sendRedirect(pagename);
		}  
		else{  
			String message = "";

			message ="Sorry username or password error";

			request.setAttribute("message", message);
			request.getRequestDispatcher("login.jsp").forward(request, response); 
		}   
	}  
}

