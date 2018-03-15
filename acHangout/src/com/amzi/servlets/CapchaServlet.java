package com.amzi.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;

import com.amzi.dao.Login;

import model.VerifyRecaptcha;
public class CapchaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public CapchaServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {


		// get request parameters for userID and password

		String n=request.getParameter("username");  
		String p=request.getParameter("pass"); 
		String gRecaptchaResponse = request
				.getParameter("g-recaptcha-response");
		//		System.out.println(gRecaptchaResponse);

		boolean success = VerifyRecaptcha.verify(gRecaptchaResponse);
		HttpSession session = request.getSession(false);
		if(session!=null) {
			session.setAttribute("name", n);
			session.setAttribute("pass", p);
		}

		if(Login.validate(n, p) && success){  
			String pagename = (String) session.getAttribute("currentpage");
			if(pagename == null) {
				String message ="login";
				request.setAttribute("message", message);
				pagename = "index.jsp";
			}
			response.sendRedirect(pagename); 
		}  
		else{  
			String message = "";
			if(success) {
				message ="Sorry username or password error";
			}
			else {
				message ="You missed the Capcha";
			}
			request.setAttribute("message", message);
			//out.print("<p style=\"color:red\">Sorry username or password error</p>");  
			request.getRequestDispatcher("login.jsp").forward(request, response); 
		}  

	}  
}

