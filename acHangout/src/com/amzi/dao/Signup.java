/***************************************************************************************************
 * Signup - To store new account into database
 * @since       1.0
***************************************************************************************************/
package com.amzi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;

public class Signup extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("resource")
	/**
	 * Checks all required fields within a signup form and inserts in the database
	 * @param values[] Array of values in order of the form fields
	 * @return <code>true</code> when information was successfully input in the database
	 * 		   <code>false</code> when insert of information has failed	 
	 */
	public static boolean validate(String values[]) {        
		boolean status = false;
		String salt = "1234";

		Connection conn = null;


		/*A SQL statement is precompiled and stored in a PreparedStatement object. 
		 * This object can then be used to efficiently execute this statement multiple times. */
		PreparedStatement pst = null;


		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "form";
		String driver = "com.mysql.jdbc.Driver";
		String userName = "root";
		String password = "khamai_";
		try {
			Class.forName(driver).newInstance();

			conn = DriverManager
					.getConnection(url + dbName, userName, password);

			//The question marks will then be replaced in the setString(nth question mark, replaced with) method.

			pst = conn.prepareStatement("Insert INTO profile(firstname, lastname,email,phone,sex,numPost) VALUES (?,?,?,?,?,?)");
			pst.setString(1, values[0]);
			pst.setString(2, values[1]);
			pst.setString(3, values[4]);
			pst.setString(4, values[5]);
			pst.setString(5, values[6]);
			pst.setString(6, "0");

			pst.executeUpdate();

			pst = conn.prepareStatement("Insert INTO users(username,password,date,level) VALUES (?,AES_ENCRYPT(?,UNHEX(?)),NOW(),1)");
			pst.setString(1, values[2]);
			pst.setString(2, values[3]);
			pst.setString(3, salt);

			pst.executeUpdate();

			status = true;

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
		return status;
	}
}
