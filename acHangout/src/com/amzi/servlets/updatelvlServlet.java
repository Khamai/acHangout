package com.amzi.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amzi.dao.Edit;

public class updatelvlServlet  extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		
		String[] ids=request.getParameterValues("ids[]");
		String[] data=request.getParameterValues("values[]");
		
		if(ids.length == 0 || data.length == 0)
			return;
		
		for(int i = 0; i < data.length; ++i) {
			Edit.EditRecords("UPDATE users SET level="+data[i]+" WHERE users.id="+ids[i]+";");
		}

		RequestDispatcher rd = request.getRequestDispatcher("users.jsp");
		rd.include(request, response);

	}
}

