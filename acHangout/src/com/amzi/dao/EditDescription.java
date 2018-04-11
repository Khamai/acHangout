package com.amzi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;

public class EditDescription extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("resource")
	public static boolean updateDescription(String values[]) {        
		boolean status = false;


		Connection conn = null;
		ResultSet rs = null;


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

			pst = conn.prepareStatement("SELECT * FROM users WHERE username=? and password=?");
			pst.setString(1, values[0]);
			pst.setString(2, values[1]);

			rs = pst.executeQuery();

			if(rs.next()) {
				int userId = Integer.parseInt(rs.getString("id"));

				pst = conn.prepareStatement("UPDATE profile p inner join users u on p.id = u.id SET p.description=? WHERE u.id=?;");
				pst.setString(1, values[2]);
				pst.setInt(2, userId);

				pst.executeUpdate();

				status = true;	
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
		return status;
	}
}