package com.amzi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.amzi.bean.DisplayPostList;

public class DisplayPost{

	
	@SuppressWarnings("resource")
	public static ArrayList<DisplayPostList> getRecord(String cat, int currentpage) {

		Connection conn = DbConnector.connect();
		
		ArrayList<DisplayPostList> List = new ArrayList<DisplayPostList>();

		/* Max in 1 page */
		int maxPost = 15;
		/* Calculate the beginning row in each page */
		int begin = (currentpage - 1) * maxPost;

		DisplayPostList display;

		ResultSet rs = null;
		

		/*A SQL statement is precompiled and stored in a PreparedStatement object. 
		 * This object can then be used to efficiently execute this statement multiple times. */
		PreparedStatement pst = null;

		try {
			
			pst = conn.prepareStatement("SELECT * FROM subcategories WHERE name=?");
			pst.setString(1, cat);

			rs = pst.executeQuery();

			if(rs.next()) {
				String catid = rs.getString("id");

				pst = conn.prepareStatement("select p.id, p.topic, u.username, count(r.postid) as comment, p.date, ra.liked + ra.disliked as rating from post p "
						+ "inner join users u on p.author = u.id "
						+ "left join reply r on p.id = r.postid "
						+ "inner join rating ra on p.id = ra.postid "
						+ "where p.subcatid = ? group by p.id, ra.id order by p.id desc limit ?,?");
				
				pst.setString(1, catid);
				pst.setInt(2, begin);
				pst.setInt(3, maxPost);
				rs = pst.executeQuery();


				while(rs.next()){
					display = new DisplayPostList();
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
		return List;
	}
	@SuppressWarnings("resource")
	public static int totalPost(String cat) {

		int num = 0;
		ResultSet rs = null;


		Connection conn = null;

		/*A SQL statement is precompiled and stored in a PreparedStatement object. 
		 * This object can then be used to efficiently execute this statement multiple times. */
		PreparedStatement pst = null;
		try {
			
			pst = conn.prepareStatement("SELECT * FROM subcategories WHERE name=?");
			pst.setString(1, cat);

			rs = pst.executeQuery();

			if(rs.next()) {
				String catid = rs.getString("id");

				pst = conn.prepareStatement("select COUNT(id) as TOTAL from post where subcatid = ?");
				pst.setString(1, catid);

				rs = pst.executeQuery();
				rs.next();
				num = rs.getInt("TOTAL");
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
		return num;
	}
	public static String title(String cat) {
		String title = "";
		ResultSet rs = null;


		Connection conn = null;

		/*A SQL statement is precompiled and stored in a PreparedStatement object. 
		 * This object can then be used to efficiently execute this statement multiple times. */
		PreparedStatement pst = null;
		try {
			
			pst = conn.prepareStatement("SELECT * FROM subcategories WHERE name=?");
			pst.setString(1, cat);

			rs = pst.executeQuery();

			if(rs.next())
				title = rs.getString("name");

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
		return title;

	}
}