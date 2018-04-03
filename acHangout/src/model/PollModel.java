package model;

public class PollModel {

	private String question = null;
	private String qtype = null;
	
	private String getQuestion () {
		return question;
	}
	
	private String getQtype() {
		return qtype;
	}
	
	
	private void setQ(String question) {
		
		this.question = question;
	}
	
	private void setQType(String qType) {
		
		this.qtype = qType;
	}
	
	
	public void init(String question, String qType) {
		
		setQ(question);
		setQType(qType);
	}
	
}

