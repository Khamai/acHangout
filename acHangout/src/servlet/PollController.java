package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.PollModel;

//@WebServlet("/poll")
public class PollController extends HttpServlet{

	private static final long serialVersionUID = 2L;

	public PollController() {
		super();
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException { 
		/*Instantiate the poll bean object*/
		//	 PollModel poll = new PollModel();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//Grab the question form parameters
		String question = request.getParameter("q");
		
		
		RequestDispatcher rd=request.getRequestDispatcher("poll.jsp"); 
		

		/*MIME*/
		response.setContentType("text/html");  

		/*prints HTML statements to web server*/
		PrintWriter out = response.getWriter();
		
		/*Collects the form inputs by name from the HTTP request*/  
		

		out.close();
	}
}
