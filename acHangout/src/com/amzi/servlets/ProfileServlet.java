package com.amzi.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.amzi.bean.ProfileList;
import com.amzi.dao.Profile;

public class ProfileServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException {  

		response.setContentType("text/html");  

		HttpSession session = request.getSession(false);

		String username = (String) session.getAttribute("name");
		String password = (String) session.getAttribute("pass");

		String values[] = {username,password};
		ArrayList<ProfileList> List = Profile.getRecord(values); 
		request.setAttribute("List", List);

		RequestDispatcher rd = request.getRequestDispatcher("accountsettings.jsp");
		rd.include(request, response);

	}
}