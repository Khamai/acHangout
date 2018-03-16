package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import poll.PollModel;

public class PollController extends HttpServlet{

	private static final long serialVersionUID = 2L;

	public PollController() {
		super();
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException { 
		/*Instantiate the poll bean object*/
	}


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd=request.getRequestDispatcher("poll.jsp"); 


		/*MIME*/
		response.setContentType("text/html");  

		/*prints HTML statements to web server*/
		PrintWriter out = response.getWriter();

		/*Collects the form inputs by name from the HTTP request*/  
		String qt=request.getParameter("qtype");
		String q=request.getParameter("q");

		if(q.equals("")) {


			out.print("<p style=\"color:red\">Sorry username or password error</p>");
			rd.forward(request, response);

		}





		// poll.init(q,qt);
		out.print("<p style=\"color:red\">q is:"+q+"</p>");


		out.close();
	}
}
