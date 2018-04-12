package com.amzi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.amzi.bean.DisplayPostList;

public class ShowPost{

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
	@SuppressWarnings("resource")
	public static ArrayList<DisplayPostList> getRecord(String values[]) {


		ArrayList<DisplayPostList> List = new ArrayList<DisplayPostList>();

		DisplayPostList display;

		ResultSet rs = null;
		Connection conn = null;

		/*A SQL statement is precompiled and stored in a PreparedStatement object. 
		 * This object can then be used to efficiently execute this statement multiple times. */
		PreparedStatement pst = null;

		try {
			conn = connect();
			pst = conn.prepareStatement("SELECT * FROM users WHERE username=? and password=?");
			pst.setString(1, values[0]);
			pst.setString(2, values[1]);

			rs = pst.executeQuery();

			if(rs.next()) {
				String author = rs.getString("id");

				pst = conn.prepareStatement("select p.id, p.topic, u.username, p.date from post p inner join users u on p.author = u.id where p.author = ?;");

				pst.setString(1, author);
				rs = pst.executeQuery();


				while(rs.next()){
					display = new DisplayPostList();
					display.setId(rs.getInt("p.id"));
					display.setTopic(rs.getString("p.topic"));
					display.setUserName(rs.getString("u.username"));
					display.setDate(rs.getString("p.date"));

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
		return List;
	}
}