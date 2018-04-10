package com.amzi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.amzi.bean.DisplaySubList;

public class DisplaySub{

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
	@SuppressWarnings("resource")
	public static ArrayList<DisplaySubList> getList(String cat, int currentpage) {


		ArrayList<DisplaySubList> List = new ArrayList<DisplaySubList>();

		/* Max in 1 page */
		int maxPost = 15;
		/* Calculate the beginning row in each page */
		int begin = (currentpage - 1) * maxPost;

		DisplaySubList displaySub;

		ResultSet rs = null;
		Connection conn = null;

		/*A SQL statement is precompiled and stored in a PreparedStatement object. 
		 * This object can then be used to efficiently execute this statement multiple times. */
		PreparedStatement pst = null;

		try {
			conn = connect();
			pst = conn.prepareStatement("SELECT * FROM categories WHERE name=?");
			pst.setString(1, cat);

			rs = pst.executeQuery();

			if(rs.next()) {
				String catid = rs.getString("id");

				pst = conn.prepareStatement("SELECT s.name, s.description, count(p.subcatid) as total, max(p.date) as latest "
						+ "from post p right join subcategories s on p.subcatid = s.id where s.catid = ? "
						+ "group by p.subcatid, s.id order by s.id limit ?,?");
				pst.setString(1, catid);
				pst.setInt(2, begin);
				pst.setInt(3, maxPost);
				rs = pst.executeQuery();

				while(rs.next()){
					displaySub = new DisplaySubList();
					displaySub.setTopic(rs.getString("s.name"));
					displaySub.setDescription(rs.getString("s.description"));
					displaySub.setTotal(rs.getString("total"));
					displaySub.setDate(rs.getString("latest"));

					List.add(displaySub);
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
	public static int totalSub(String cat) {

		int num = 0;
		ResultSet rs = null;


		Connection conn = null;

		/*A SQL statement is precompiled and stored in a PreparedStatement object. 
		 * This object can then be used to efficiently execute this statement multiple times. */
		PreparedStatement pst = null;
		try {
			conn = connect();
			pst = conn.prepareStatement("SELECT * FROM categories WHERE name=?");
			pst.setString(1, cat);

			rs = pst.executeQuery();

			if(rs.next()) {
				String catid = rs.getString("id");

				pst = conn.prepareStatement("select count(catid) as TOTAL from subcategories where catid = ?");
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
			conn = connect();
			pst = conn.prepareStatement("SELECT * FROM categories WHERE name=?");
			pst.setString(1, cat);

			rs = pst.executeQuery();

			if(rs.next()) 
				title = rs.getString("description");

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