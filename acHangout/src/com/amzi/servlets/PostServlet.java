/***************************************************************************************************
 * PostServlet - To post new topic in sub-category
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

import com.amzi.dao.Post;



public class PostServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  

		HttpSession session = request.getSession(false);

		String username = (String) session.getAttribute("name");
		String password = (String) session.getAttribute("pass");
		String cat = request.getParameter("cat");
		String content =  request.getParameter("content");
		String topic = request.getParameter("topic");

		if(topic == null) {

			RequestDispatcher rd=request.getRequestDispatcher("newpost.jsp");  
			rd.forward(request,response);
		}

		String values[] = 
			{
					username,password,cat, topic,content
			};

		if(Post.validate(values)){  
			String pagename = "display?sub=" + cat + "&page=1";  
			response.sendRedirect(pagename);
		}  
		else{  
			String message = "Error! Failed to submit post";
			request.setAttribute("message", message);
			request.getRequestDispatcher("newpost.jsp").forward(request, response);
		}  
		out.close();  
	}  
}
