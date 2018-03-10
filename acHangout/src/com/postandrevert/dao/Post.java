package com.postandrevert.dao;

import java.util.Date;    
public class Post {
    private int user_account;    //Auther(Foreign key of post) connect to user's primary key
    private int post_id;         //id(Primary key of post)
    private String post_title;   
    private String post_content; 
    private Date post_data;      
                 
   
    public int getMessage_account() {
        return user_account;
    }
    public void setMessage_account(int message_account) {
        this.user_account = message_account;
    }
    public int getPost_id() {
        return post_id;
    }
    public void setPost_id(int message_id) {
        this.post_id = message_id;
    }
    public String getPost_title() {
        return post_title;
    }
    public void setPost_title(String message_title) {
        this.post_title = message_title;
    }
    public String getPost_content() {
        return post_content;
    }
    public void setPost_content(String message_content) {
        this.post_content = message_content;
    }
    public Date getPost_data() {
        return post_data;
    }
    public void setPost_data(Date message_data) {
        this.post_data = message_data;
    }
}
