/***************************************************************************************************
 * EditDescriptionServlet - To edit description in user's profile
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
import javax.servlet.http.HttpSession;

import com.amzi.dao.EditDescription;

public class EditDescriptionServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  

		HttpSession session = request.getSession(false);

		String username = (String) session.getAttribute("name");
		String password = (String) session.getAttribute("pass");
		String des =  request.getParameter("description");


		String values[] = {username,password,des};

		if(EditDescription.updateDescription(values)){ 
			response.sendRedirect("your-profile");
		}  
		else{  
			response.sendRedirect("your-profile");
		}  
		out.close();  
	}  
}
