/***************************************************************************************************
 * DbConnector - To connect to database
 * @since       1.0
***************************************************************************************************/
package com.amzi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
public class DbConnector {

	public static Connection connect() {
		Connection conn = null;

		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "form";
		String driver = "com.mysql.jdbc.Driver";
		String userName = "root";
		String password = "khamai_";
		try {
			Class.forName(driver).newInstance();
			conn = DriverManager.getConnection(url + dbName, userName, password);
		} catch (Exception e) {
			System.out.println(e);
		}
		return conn;

	}
}

