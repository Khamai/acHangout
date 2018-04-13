/***************************************************************************************************
 * SeachServlet - To let user search post
 * @since       1.0
***************************************************************************************************/
package com.amzi.servlets;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.text.MessageFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amzi.bean.SearchList;
import com.amzi.dao.SearchDao;

public class SearchServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 6954318785798082073L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)  
			throws ServletException, IOException { 
		
		String searchString = request.getParameter("search");
		
		//call DAO layer and get all products for search criteria
		SearchDao dao = new SearchDao();
		ArrayList<SearchList> search = dao.searchList(searchString, 0);
		
		//write the products data back to the client browser
		String page = getHTMLString(request.getServletContext().getRealPath("search.jsp"), search);
		response.getWriter().write(page);
	}

	public String getHTMLString(String filePath, ArrayList<SearchList> search) throws IOException{
		BufferedReader reader = new BufferedReader(new FileReader(filePath));
		String line="";
		StringBuffer buffer = new StringBuffer();
		while((line=reader.readLine())!=null){
			buffer.append(line);
		}
		
		reader.close();
		String page = buffer.toString();
		
		page = MessageFormat.format(page, search.get(0).getTopic(),
				search.get(1).getDescription(),search.get(2).getDate(),
				0);
		
		return page;
			
	}
}