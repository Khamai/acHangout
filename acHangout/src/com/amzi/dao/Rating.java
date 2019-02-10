/***************************************************************************************************
 * Rating - To store like/dislike from user into database 
 * @since       1.0
***************************************************************************************************/
package com.amzi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;

public class Rating extends HttpServlet{

	private static final long serialVersionUID = -1203125235252940220L;

	@SuppressWarnings("resource")
	public static boolean vote(String values[], int choice) {        
		boolean status = false;

		Connection conn = null;
		ResultSet rs = null;

		PreparedStatement pst = null;

		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "form";
		String driver = "com.mysql.jdbc.Driver";
		String userName = "root";
		String password = "khamai_";

		try {
			Class.forName(driver).newInstance();
			conn = DriverManager.getConnection(url + dbName, userName, password);

			pst = conn.prepareStatement("SELECT * FROM users WHERE username=? and password=?");
			pst.setString(1, values[0]);
			pst.setString(2, values[1]);
			//result set
			rs = pst.executeQuery();

			if(rs.next()) {
				String userId = rs.getString("id");

				pst = conn.prepareStatement("select * from rating where postid = ?");
				pst.setString(1, values[2]);
				rs = pst.executeQuery();
				if(rs.next()) {
					int ratingId = Integer.parseInt(rs.getString("id"));

					pst = conn.prepareStatement("select * from uservotes where userid = ? and rateid = ?;");
					pst.setString(1, userId);
					pst.setInt(2, ratingId);
					rs = pst.executeQuery();
					if(!rs.next()) {

						pst = conn.prepareStatement("Insert into uservotes (userid, rateid, pick) values (?,?,?);");

						pst.setString(1, userId);
						pst.setInt(2, ratingId);
						pst.setInt(3, choice);
						pst.executeUpdate();


						if(choice == 1) {
							pst = conn.prepareStatement("Insert into rating(id,postid)values(?,?)ON DUPLICATE KEY UPDATE liked=liked+1;");
						}
						else {
							pst = conn.prepareStatement("Insert into rating(id,postid)values(?,?)ON DUPLICATE KEY UPDATE disliked = disliked+1;");
						}

						pst.setInt(1, ratingId);
						pst.setString(2, values[2]);

						pst.executeUpdate();
					}
					else {
						int pick = Integer.parseInt(rs.getString("pick"));

						if(pick == choice) {
							pst = conn.prepareStatement("delete from uservotes where userid = ? and rateid = ?");
							pst.setString(1, userId);
							pst.setInt(2, ratingId);
							pst.executeUpdate();

							if(choice == 1) 
								pst = conn.prepareStatement("Insert into rating(id,postid)values(?,?)ON DUPLICATE KEY UPDATE liked=liked-1;");

							else
								pst = conn.prepareStatement("Insert into rating(id,postid)values(?,?)ON DUPLICATE KEY UPDATE disliked = disliked-1;");

							pst.setInt(1, ratingId);
							pst.setString(2, values[2]);
							pst.executeUpdate();
						}
						else if(pick != choice) {
							
							pst = conn.prepareStatement("UPDATE uservotes SET pick=? WHERE userid = ? and rateid = ?;");
							pst.setInt(1, choice);
							pst.setString(2, userId);
							pst.setInt(3, ratingId);

							pst.executeUpdate();
							
							if(choice == 1) {
								pst = conn.prepareStatement("Insert into rating(id,postid)values(?,?)ON DUPLICATE KEY UPDATE disliked = disliked-1;");
								pst.setInt(1, ratingId);
								pst.setString(2, values[2]);
								pst.executeUpdate();
								
								pst = conn.prepareStatement("Insert into rating(id,postid)values(?,?)ON DUPLICATE KEY UPDATE liked=liked+1;");
								pst.setInt(1, ratingId);
								pst.setString(2, values[2]);
								pst.executeUpdate();
							}
							else {
								pst = conn.prepareStatement("Insert into rating(id,postid)values(?,?)ON DUPLICATE KEY UPDATE liked=liked-1;");
								pst.setInt(1, ratingId);
								pst.setString(2, values[2]);
								pst.executeUpdate();
								
								pst = conn.prepareStatement("Insert into rating(id,postid)values(?,?)ON DUPLICATE KEY UPDATE disliked = disliked+1;");
								pst.setInt(1, ratingId);
								pst.setString(2, values[2]);
								pst.executeUpdate();
								
							}
						}
					}
					status = true;	
				}
			}
		}catch(Exception e) {
			System.out.println(e);
		}finally {
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