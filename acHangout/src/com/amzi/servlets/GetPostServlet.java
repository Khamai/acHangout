package com.amzi.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amzi.dao.GetPost;

public class GetPostServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

        String n=request.getParameter("page");  
        
        HttpSession session = request.getSession(false);
        if(session!=null)
        session.setAttribute("page", n);
        
		response.setContentType("text/html");  
		PrintWriter out = response.getWriter();  
		
		String posts[][] = GetPost.getRecord(categoryID, startID, endID); 
		
		for(int i = 0; i <= 15; i++) {
	        if()
	        {  
				out.print(""); /*<div class="col-sm-12 forum-head lpad">
				<div class="col-sm-6">post[i][0]</div>
				<div class="col-sm-2 child"
					style="border-left: 2px solid hsl(212, 35%, 15%);">Author</div>
				<div class="col-sm-1 child">post[i][1]</div>
				<div class="col-sm-2 child">post[i][2]</div>
				<div class="col-sm-1 child">Like/Dislike</div>

			</div>*/
	        }
        }  
        else{  
            out.print("<p style=\"color:red; text-align:center\">Sorry username or password error</p>");  
            RequestDispatcher rd=request.getRequestDispatcher("Sections/login.jsp");  
            rd.include(request,response);  
        } 

		out.close();  
	}
}