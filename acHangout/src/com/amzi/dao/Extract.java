package com.amzi.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.amzi.dao.Database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Extract {
	public static List<List<String>> getRecords(String statement, int numOfCols){
		List rows = new ArrayList();
		List<String> cols = new ArrayList();
		Connection conn = null;
		ResultSet rs = null;
		Statement stmt = null;
		
		try {
			if(!statement.toLowerCase().contains("select"))
				return rows;
			
			conn = Database.connect();
			
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(statement);
			
			while(rs.next()) {
				for(int i = 1; i <= numOfCols; ++i) {
					cols.add(rs.getString(i));
				}
				
				System.out.println("");
				
				rows.add(cols);

				cols = new ArrayList<String>();
			}
			

			
		} catch(Exception e) {
			
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		
		
		return rows;
	}
}
