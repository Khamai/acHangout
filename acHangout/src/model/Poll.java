package model;

import java.util.ArrayList;

public class Poll {

	private String question = null;
	private String userId = null;
	private int pollId;
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
	
	public ArrayList getOptions() {
		
		return options;
	}

	public int getPollId() {
		return pollId;
	}

	public void setPollId(int pollId) {
		this.pollId = pollId;
	}
	

	
	

	
}

