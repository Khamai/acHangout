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

public class Edit {
	public static boolean EditRecords(String statement){
		Connection conn = null;
		ResultSet rs = null;
		Statement stmt = null;
		
		try {
			if(!statement.toLowerCase().contains("update"))
				return false;
			
			conn = Database.connect();
			stmt = conn.createStatement();
			stmt.executeUpdate(statement);
	
			System.out.println(statement);

			
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
		
		
		
		return true;
	}
}