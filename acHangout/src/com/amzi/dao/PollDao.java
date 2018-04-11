package com.amzi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.Poll;

public class PollDao {

	public String getUserId(String userName) {

		String userId = null;
		/*A SQL statement is precompiled and stored in a PreparedStatement object. 
		 * This object can then be used to efficiently execute this statement multiple times. */
		PreparedStatement pst = null;

		// get the connection for the database
		Connection connection = DbConnector.connect();
		try {
			pst = connection.prepareStatement("SELECT * FROM users WHERE username=?");
			pst.setString(1,userName );

			ResultSet rs = pst.executeQuery();
			rs.next();
			userId = rs.getString("id");

		} catch (Exception e) {
			System.out.println(e);
		}


		return userId;
	}

	public boolean submitPoll(Poll poll) {     

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

			pst = connection.prepareStatement("Insert INTO poll(author_id, question, date) VALUES (?,?,now())", pst.RETURN_GENERATED_KEYS);
			pst.setString(1, poll.getUserId());
			pst.setString(2, poll.getQuestion());
			pst.executeUpdate();
			rs = pst.getGeneratedKeys();
			if(rs.next()) {
				poll.setPollId(rs.getInt(1));

				//Load into DB all the options for the poll.
				pst = connection.prepareStatement("Insert INTO option(answer, poll_id) VALUES (?,?)");
				for(Object i : poll.getOptions()) {
					pst.setString(1, i.toString());
					pst.setString(2,""+poll.getPollId());
					pst.executeUpdate();
				}
			}
			if (pst != null) {
				try {
					pst.close();
				} catch (SQLException e) {
					e.printStackTrace();
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
}