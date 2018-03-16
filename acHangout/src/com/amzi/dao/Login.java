package com.amzi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Login  {

	public static String validate(String name, String pass) {     
		String status = "";
		String salt = "1234";
		Connection conn = null;

<<<<<<< HEAD
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "form";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "xxxx";
        try {
            Class.forName(driver).newInstance();
           
            conn = DriverManager
                    .getConnection(url + dbName, userName, password);
            //The question marks will then be replaced in the setString(nth question mark, replaced with) method.
            pst = conn
                    .prepareStatement("select * from users where username=? and password=?");
            pst.setString(1, name);
            pst.setString(2, pass);
=======
>>>>>>> refs/remotes/origin/Kha

		/*A SQL statement is precompiled and stored in a PreparedStatement object. 
		 * This object can then be used to efficiently execute this statement multiple times. */
		PreparedStatement pst = null;

		ResultSet rs = null;

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
			pst = conn
					.prepareStatement("select * from users where username=? and password=AES_ENCRYPT(?,UNHEX(?))");
			pst.setString(1, name);
			pst.setString(2, pass);
			pst.setString(3, salt);

			rs = pst.executeQuery();
			if(rs.next())
				status = rs.getString("password");


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
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return status;
	}
}
