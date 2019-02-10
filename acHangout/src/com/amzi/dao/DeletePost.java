/***************************************************************************************************
 * DeletePost - To delete specific post depends on user from database
 * @since       1.0
***************************************************************************************************/
package com.amzi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DeletePost{

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
	public static boolean getRecord(String id) {

		boolean pass = false;


		ResultSet rs = null;
		Connection conn = null;

		/*A SQL statement is precompiled and stored in a PreparedStatement object. 
		 * This object can then be used to efficiently execute this statement multiple times. */
		PreparedStatement pst = null;

		try {
			conn = connect();

			pst = conn.prepareStatement("select * from rating where postid = ?;");
			pst.setString(1, id);
			rs = pst.executeQuery();

			if(rs.next()) {
				String rateid = rs.getString("id");

				pst = conn.prepareStatement("select * from uservotes where rateid = ?;");
				pst.setString(1, rateid);
				rs = pst.executeQuery();

				while(rs.next()) {
					String userid = rs.getString("userid");

					pst = conn.prepareStatement("delete from uservotes where rateid = ? and userid =?;");
					pst.setString(1, rateid);
					pst.setString(2, userid);

					pst.executeUpdate();
				}
				pst = conn.prepareStatement("delete from rating where postid = ?;");
				pst.setString(1, id);
				pst.executeUpdate();
			}

			pst = conn.prepareStatement("select * from reply where postid = ?;");
			pst.setString(1, id);
			rs = pst.executeQuery();

			while(rs.next()) {
				String replyid = rs.getString("id");

				pst = conn.prepareStatement("delete from reply where postid = ? and id=?;");
				pst.setString(1, id);
				pst.setString(2, replyid);
				pst.executeUpdate();
			}

			pst = conn.prepareStatement("delete from post where id = ?;");
			pst.setString(1, id);
			pst.executeUpdate();

			pass = true;				
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
		return pass;
	}
}