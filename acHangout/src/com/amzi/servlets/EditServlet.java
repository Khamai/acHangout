/***************************************************************************************************
 * EditSerlvet - To let admin edit database
 * @since       1.0
***************************************************************************************************/
package com.amzi.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amzi.dao.Edit;

public class EditServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 
	 */

	public void doGet(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		int currentpage = 1;
		response.setContentType("text/html");  


		//currentpage= Integer.valueOf(request.getParameter("page"));

		HttpSession session = request.getSession(false);

		if(currentpage == 0)
			currentpage = 1;

		//String cat = request.getParameter("topic");
		
		Edit.EditRecords("UPDATE users SET level = "+request.getAttribute("lvl")+"WHERE users.id="+
		request.getAttribute("id")+";");
		
		
		//ArrayList<DisplayList> List = Display.getRecord(cat,currentpage); 

		//request.setAttribute("numberofpage", numberofpage);
		//request.setAttribute("currentpage", currentpage);


		RequestDispatcher rd = request.getRequestDispatcher("users.jsp");
		rd.include(request, response);

	}
}
