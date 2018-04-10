package com.amzi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.amzi.bean.CommentList;

public class Comment{

	public static Connection connect() {
		Connection conn = null;

		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "form";
		String driver = "com.mysql.jdbc.Driver";
		String userName = "root";
		String password = "xxxx";
		try {
			Class.forName(driver).newInstance();
			conn = DriverManager
					.getConnection(url + dbName, userName, password);
		} catch (Exception e) {
			System.out.println(e);
		}
		return conn;

	}
	public static ArrayList<CommentList> getRecord(int topicId) {


		ArrayList<CommentList> List = new ArrayList<CommentList>();

		CommentList comment;

		ResultSet rs = null;
		Connection conn = null;

		/*A SQL statement is precompiled and stored in a PreparedStatement object. 
		 * This object can then be used to efficiently execute this statement multiple times. */
		PreparedStatement pst = null;

		try {
			conn = connect();

			pst = conn.prepareStatement("select p.topic, p.content, u.username, p.date, r.content, r.date, r.author,"
					+ "COALESCE(ra.liked,0) as liked, COALESCE(ra.disliked,0) as disliked, COALESCE(ra.liked,0) + COALESCE(ra.disliked,0) as rating "
					+ "from post p inner join users u on p.author = u.id left join reply r on p.id = r.postid left join rating ra on p.id = ra.id where p.id=? order by p.id desc");
			pst.setInt(1, topicId);
			rs = pst.executeQuery();


			while(rs.next()){
				comment = new CommentList();
				comment.set_post_topic(rs.getString("p.topic"));
				comment.set_post_content(rs.getString("p.content"));
				comment.set_post_username(rs.getString("u.username"));
				comment.set_post_date(rs.getString("p.date"));
				comment.set_comment_content(rs.getString("r.content"));
				comment.set_comment_username(rs.getString("r.author"));
				comment.set_comment_date(rs.getString("r.date"));
				comment.setliked(rs.getInt("liked"));
				comment.setdisliked(rs.getInt("disliked"));
				comment.setRating(rs.getInt("rating"));

				List.add(comment);
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
	public static int totalComment(int topicId) {

		int num = 0;
		ResultSet rs = null;


		Connection conn = null;

		/*A SQL statement is precompiled and stored in a PreparedStatement object. 
		 * This object can then be used to efficiently execute this statement multiple times. */
		PreparedStatement pst = null;
		try {
			conn = connect();


			pst = conn.prepareStatement("select count(r.postid) as total_comment from post p "
					+ "inner join reply r on p.id = r.postid where p.id = ?;");
			pst.setInt(1, topicId);

			rs = pst.executeQuery();
			rs.next();
			num = rs.getInt("total_comment");

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
}