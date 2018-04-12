package com.amzi.bean;

public class SearchList {
	private String topic, description, total, date;

	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		if(description == null)
			this.description = "";
		else
			this.description = description;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		if(date == null)
			this.date = "";
		else
			this.date = date;
	}
}