/******************************************************************************
 * Database - Connection to the database
 * 
 * @author      Kha Mai
 * @since       1.0
*******************************************************************************/
package com.amzi.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Database {
	
	/**
	 * connect - connects to database and returns the connection
	 * @return
	 */
	public static Connection connect() {
		Connection conn = null;

		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "form";
		String driver = "com.mysql.jdbc.Driver";
		String userName = "root";
		String password = "khamai_";
		try {
			Class.forName(driver).newInstance();
			conn = DriverManager
					.getConnection(url + dbName, userName, password);
		} catch (Exception e) {
			System.out.println(e);
		}
		return conn;

	}
}