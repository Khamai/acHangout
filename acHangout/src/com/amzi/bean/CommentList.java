/***************************************************************************************************
 * CommentList - is a java bean to hold all variables related to comment
 * Variables
 * <table>
 * <tr><th>Post:</th></tr>
 * <tr><td>topic</td><th>content</td><td>username</td><td>date</td></tr>
 * <tr><th>Comment:</th></tr>
 * <tr><td>content</td><th>username</td><td>date</td></tr>
 * <tr><th>Rating:</th></tr>
 * <tr><td>liked</td><th>disliked</td><td>total</td></tr>
 * </table>
 * @since       1.0
***************************************************************************************************/
package com.amzi.bean;

public class CommentList {
	private String post_topic, post_content, post_username, post_date, comment_content, comment_username, comment_date;
	private int liked, disliked, total_rating;

	public String get_post_topic() {
		return post_topic;
	}
	public void set_post_topic(String post_topic) {
		this.post_topic = post_topic;
	}
	public String get_post_username() {
		return post_username;
	}
	public void set_post_username(String post_username) {
		this.post_username = post_username;
	}
	public String get_post_content() {
		return post_content;
	}
	public void set_post_content(String post_content) {
		this.post_content = post_content;
	}
	public String get_post_date() {
		return post_date;
	}
	public void set_post_date(String post_date) {
		this.post_date = post_date;
	}

	public String get_comment_content() {
		return comment_content;
	}
	public void set_comment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public String get_comment_username() {
		return comment_username;
	}
	public void set_comment_username(String comment_username) {
		this.comment_username = comment_username;
	}
	public String get_comment_date() {
		return comment_date;
	}
	public void set_comment_date(String comment_date) {
		this.comment_date = comment_date;
	}
	
	public int getRating() {
		return total_rating;
	}
	public void setRating(int total_rating) {
		this.total_rating = total_rating;
	}
	public int getliked() {
		return liked;
	}
	public void setliked(int liked) {
		this.liked = liked;
	}
	public int getdisliked() {
		return disliked;
	}
	public void setdisliked(int disliked) {
		this.disliked = disliked;
	}
}
