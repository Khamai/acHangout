package model;

import java.util.ArrayList;

public class Poll {

	private String question = null;
	private String id = null;
	
	private ArrayList<String> options = new ArrayList<String>();
	
	public String getId() {
		
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
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
	

	
	

	
}

