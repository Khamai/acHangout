/***************************************************************************************************
 * DisplaySubList - is a java bean to hold all variables related to Sub-categories
 * Variables
 * <table>
 * <tr><th>Sub-categories:</th></tr>
 * <tr><td>topic</td><th>description</td><td>total</td><td>date</td></tr>
 * </table>
 * @author      Kai mai
 * @since       1.0
***************************************************************************************************/
package com.amzi.bean;

public class DisplaySubList {
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
