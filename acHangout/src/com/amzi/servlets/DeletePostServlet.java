/***************************************************************************************************
 * DeletePostServlet - To let users delete their posts in profile
 * @since       1.0
***************************************************************************************************/
package com.amzi.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amzi.dao.DeletePost;

public class DeletePostServlet  extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  


		String id = request.getParameter("delete");

		if(DeletePost.getRecord(id) == true) {
			response.sendRedirect("your-profile");
		}
		else {
			response.sendRedirect("showpost");
		}

	}
}

