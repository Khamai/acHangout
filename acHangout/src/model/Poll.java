/***************************************************************************************************
 * Poll - To store information come from poll
 * @since       1.0
***************************************************************************************************/
package model;

import java.util.ArrayList;

public class Poll {

	private String question = null;
	private String userId = null;
	private String pollId = null;
	private String username = null;
	private int votes;
	private String date = null;
	private String type;
	private ArrayList<String> options = new ArrayList<String>();
	
	public String getUserId() {
		
		return userId;
	}
	
	public void setUserId(String id) {
		this.userId = id;
	}
	
	public String getQuestion() {
		return question;
	}
	
	
	
	
	public void setQuestion(String question) {
		
		this.question = question;
	}




	public void setOptions(String option) {
		options.add(option);
	}
	
	public ArrayList<String> getOptions() {
		
		return options;
	}

	public String getPollId() {
		return pollId;
	}

	public void setPollId(String pollId) {
		this.pollId = pollId;
	}

	public int getVotes() {
		return votes;
	}

	public void setVotes(int votes) {
		this.votes = votes;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
	public String getName() {
		return username;
	}
	
	public void setName(String username) {
		
		this.username = username;
	}


	
	

	
}

