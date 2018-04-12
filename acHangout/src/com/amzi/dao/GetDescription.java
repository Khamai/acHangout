/***************************************************************************************************
 * GetDescription - To get all information of that user from database
 * @since       1.0
***************************************************************************************************/
package com.amzi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.amzi.bean.DisplaySubList;
import com.amzi.bean.ProfileList;

public class GetDescription{

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
	public static ArrayList<ProfileList> getList(String values[]) {


		ArrayList<ProfileList> List = new ArrayList<ProfileList>();


		ProfileList profile;

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
				int userId = Integer.parseInt(rs.getString("id"));

				pst = conn.prepareStatement("select p.firstname, p.lastname, p.email, p.phone, p.description from profile p inner join users u on p.id = u.id where u.id =?;");

				pst.setInt(1, userId);
				rs = pst.executeQuery();
				while(rs.next()) {

					profile = new ProfileList();
					profile.setFirstName(rs.getString("p.firstname"));
					profile.setlastName(rs.getString("p.lastname"));
					profile.setEmail(rs.getString("p.email"));
					profile.setTelephone(rs.getString("p.phone"));
					profile.setDescription(rs.getString("p.description"));

					List.add(profile);
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