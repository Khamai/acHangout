/***************************************************************************************************
 * PollDao - To insert new poll question into database or get poll question from database
 * @since       1.0
***************************************************************************************************/
package com.amzi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.amzi.bean.DisplayPostList;

import model.Poll;

public class PollDao {

	public String getUserId(String userName) {

		String userId = null;
		/*A SQL statement is precompiled and stored in a PreparedStatement object. 
		 * This object can then be used to efficiently execute this statement multiple times. */
		PreparedStatement pst = null;

		// get the connection for the database
		Connection conn = DbConnector.connect();
		try {
			pst = conn.prepareStatement("SELECT * FROM users WHERE username=?");
			pst.setString(1,userName );

			ResultSet rs = pst.executeQuery();
			rs.next();
			userId = rs.getString("id");

		} catch (Exception e) {
			System.out.println(e);
		}


		return userId;
	}

	@SuppressWarnings("finally")
	public static boolean submitPoll(Poll poll) {     

		boolean status = false;


		ResultSet rs = null;


		/*A SQL statement is precompiled and stored in a PreparedStatement object. 
		 * This object can then be used to efficiently execute this statement multiple times. */
		PreparedStatement pst = null;

		// get the connection for the database
		Connection connection = DbConnector.connect();


		try {

			//The question marks will then be replaced in the setString(nth question mark, replaced with) method.

			//	String pollid = rs.getString("pollid");

			pst = connection.prepareStatement("Insert INTO poll(author_id, question, date) VALUES (?,?,now())", Statement.RETURN_GENERATED_KEYS);
			pst.setString(1, poll.getUserId());
			pst.setString(2, poll.getQuestion());
			pst.executeUpdate();
			rs = pst.getGeneratedKeys();
			if(rs.next()) {
				poll.setPollId(rs.getString(1));

				//Load into DB all the options for the poll.
				pst = connection.prepareStatement("Insert INTO poll_option(answer, poll_id) VALUES (?,?)");
				for(Object i : poll.getOptions()) {
					pst.setString(1, i.toString());
					pst.setString(2,""+poll.getPollId());
					pst.executeUpdate();
				}
				pst = connection.prepareStatement("Insert INTO poll_option(answer, poll_id) VALUES (?,?)");

			}
			if (pst != null) {
				try {
					pst.close();
				} catch (SQLException e) {
					e.printStackTrace();
					/*Upon SQL Exception, undo the previous statement and revert table changes.
					 * 
					 */
					pst.executeUpdate("DELETE FROM form.poll WHERE poll_id ="+poll.getPollId());
					pst.executeUpdate("SELECT MAX( 'option_id' ) FROM poll_option");
					rs = pst.getResultSet();
					pst.executeUpdate("ALTER TABLE poll_option auto_increment ="+(rs.getInt(1)-1));
					pst.executeUpdate("SELECT MAX( 'poll_id' ) FROM table");
					rs = pst.getResultSet();
					pst.executeUpdate("ALTER TABLE poll auto_increment ="+(rs.getInt(1)-1));

				}
			}
			if (connection != null) {
				try {
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			status = true;	


		} catch (Exception e) {
			System.out.println(e);
		} finally {


			return status;


		}
	}
	@SuppressWarnings("resource")
	public static ArrayList<Poll> getRecords() {

		Connection conn = DbConnector.connect();

		ArrayList<Poll> list = new ArrayList<Poll>();

		Poll temp;
		ResultSet rs = null;


		/*A SQL statement is precompiled and stored in a PreparedStatement object. 
		 * This object can then be used to efficiently execute this statement multiple times. */
		PreparedStatement pst = null;

		try {

			pst = conn.prepareStatement("select u.username, p.poll_id, p.author_id, p.question,  p.date from users u inner join poll p on u.id = p.author_id;");

			rs = pst.executeQuery();

			while(rs.next()){
				temp = new Poll();

				temp.setPollId(rs.getString("p.poll_id"));
				temp.setUserId(rs.getString("p.author_id"));
				temp.setName(rs.getString("u.username"));
				temp.setQuestion(rs.getString("p.question"));
				temp.setDate(rs.getString("p.date"));
				list.add(temp);
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
		return list;
	}
}
