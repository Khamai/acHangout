package com.amzi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.amzi.bean.SearchList;

public class SearchDao {

	public static Connection connect() {
		Connection conn = null;

		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "form";
		String driver = "com.mysql.jdbc.Driver";
		String userName = "root";
		String password = "xxxx";
		try {
			Class.forName(driver).newInstance();
			conn = DriverManager
					.getConnection(url + dbName, userName, password);
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return conn;
	}

	public static ArrayList<SearchList> searchList(String searchString, int currentpage) {
		
		ArrayList<SearchList> List = new ArrayList<SearchList>();
		
		int maxPost = 15;
		int begin = (currentpage - 1) * maxPost;
		
		SearchList searchlist; 
		
		Connection conn = null;
		PreparedStatement pst = null;
		ResultSet rs = null;
		
		try {
			conn = connect();
			pst = conn.prepareStatement("select * from Subpost where title like '%" + searchString + "%'");

			rs = pst.executeQuery();

			while (rs.next()) {  //These code maybe wrong.
				searchlist = new SearchList();
				searchlist.setTopic(rs.getString("s.name"));
				searchlist.setDescription(rs.getString("s.description"));
				searchlist.setTotal(rs.getString("total"));
				searchlist.setDate(rs.getString("latest"));
				List.add(searchlist);
			}

		} catch (Exception e) {
			System.out.println(e);
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (pst != null) {
				try {
					pst.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return List;
	}
	
	
	//I didn't finish this DAO
	
	
	
	
	
	
	
	
	
	
	
}