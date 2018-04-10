package com.amzi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;

public class Post extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@SuppressWarnings("resource")
	public static boolean validate(String values[]) {        
		boolean status = false;


		Connection conn = null;
		ResultSet rs = null;
		int totalId = 0;
		int postId = 1;


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

				pst = conn.prepareStatement("SELECT * FROM subcategories WHERE name=?");
				pst.setString(1, values[2]);

				rs = pst.executeQuery();

				if(rs.next()) {
					String category = rs.getString("id");

					pst = conn.prepareStatement("Insert INTO post(topic, content, date, author, subcatid) VALUES (?,?,now(),?,?)");
					pst.setString(1, values[3]);
					pst.setString(2, values[4]);
					pst.setString(3, author);
					pst.setString(4, category);
					pst.executeUpdate();

					pst = conn.prepareStatement("SELECT max(id) as max FROM post");
					rs = pst.executeQuery();
					if(rs.next()) 
						postId = Integer.parseInt(rs.getString("max"));

					pst = conn.prepareStatement("SELECT * FROM rating");
					rs = pst.executeQuery();

					if(rs.next())
						totalId = Integer.parseInt(rs.getString("id"));

					pst = conn.prepareStatement("Insert into rating(id,liked,disliked,postid)values(?,0,0,?)");
					pst.setInt(1, totalId + 1);
					pst.setInt(2, postId);
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