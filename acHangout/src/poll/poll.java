package poll;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class poll {

	private static final long serialVersionUID = 2L;
	
	 public void doPost(HttpServletRequest request, HttpServletResponse response)  
	            throws ServletException, IOException { 
		 /*MIME*/
		 response.setContentType("text/html");  
		 
		 /*prints HTML statements to web server*/
		 PrintWriter out = response.getWriter();
		 
		 /*Collects the form inputs by name from the HTTP request*/
		 String q=request.getParameter("q");  
	     String qt=request.getParameter("qtype"); 
	     
	     
		 
		 
		 
	 }
}
