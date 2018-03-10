package poll;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.coyote.http11.Http11AprProtocol;

public class PollController extends Http {

	private static final long serialVersionUID = 2L;
	
	public PollController() {
		super();
	}
	 public void doGet(HttpServletRequest request, HttpServletResponse response)  
	            throws ServletException, IOException { 
		 
		 /*MIME*/
		 response.setContentType("text/html");  
		 
		 /*prints HTML statements to web server*/
		 PrintWriter out = response.getWriter();
		 
		 /*Collects the form inputs by name from the HTTP request*/
		 	request.getParameter("q");  
	     String qt=request.getParameter("qtype"); 
	     
	     
		 
		 
		 
	 }
}
