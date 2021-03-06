/***************************************************************************************************
 * CreateSub - To create sub-category from specific main category into database
 * @since       1.0
***************************************************************************************************/
package com.amzi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;

public class CreateSub extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("resource")
	public static boolean insert(String values[]) {        
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
				String author = rs.getString("id");

				pst = conn.prepareStatement("SELECT * FROM categories WHERE name=?");
				pst.setString(1, values[4]);

				rs = pst.executeQuery();

				if(rs.next()) {
					String catid = rs.getString("id");
								
					pst = conn.prepareStatement("insert into subcategories (name, description, catid, author) values (?,?,?,?);");
					pst.setString(1, values[2]);
					pst.setString(2, values[3]);
					pst.setString(3, catid);
					pst.setString(4, author);
					pst.executeUpdate();

					status = true;	
				}

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