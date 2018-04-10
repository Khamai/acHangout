package com.amzi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;

import com.amzi.bean.DisplayList;

public class Profile extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("resource")
	public static boolean validate(String values[]) {        
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
		String password = "1234";
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
				String authorid = rs.getString("id");

				pst = conn.prepareStatement("select p.firstname, p.lastname, p.email, p.phone from users u inner join profile p on u.id = p.id where u.id = ?");
				pst.setString(1, authorid);

				rs = pst.executeQuery();
				while(rs.next()){
					display = new DisplayList();
					display.setId(rs.getInt("p.id"));
					display.setTopic(rs.getString("p.topic"));
					display.setUserName(rs.getString("u.username"));
					display.setComment(rs.getString("comment"));
					display.setDate(rs.getString("p.date"));
					display.setRating(rs.getString("rating"));

					List.add(display);
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