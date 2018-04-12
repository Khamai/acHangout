/***************************************************************************************************
 * ProfileList - is a java bean to hold all variables related to search
 * Variables
 * <table>
 * <tr><th>Profile:</th></tr>
 * <tr><td>first name</td><th>last name</td><td>email</td><td>telephone</td><td>description</td></tr>
 * </table>
 * @author      Tianze Wu
 * @since       1.0
***************************************************************************************************/
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