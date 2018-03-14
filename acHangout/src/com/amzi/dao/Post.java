package com.amzi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;

public class Post extends HttpServlet {
	@SuppressWarnings("resource")
	public static boolean validate(String values[]) {        
        boolean status = false;
       
        
        Connection conn = null;
        ResultSet rs = null;
        
        
        /*A SQL statement is precompiled and stored in a PreparedStatement object. 
         * This object can then be used to efficiently execute this statement multiple times. */
        PreparedStatement pst = null;
       

        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "form";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "abc123";
        try {
            Class.forName(driver).newInstance();
           
            conn = DriverManager
                    .getConnection(url + dbName, userName, password);
            
            //The question marks will then be replaced in the setString(nth question mark, replaced with) method.
            
            pst = conn.prepareStatement("SELECT * FROM users WHERE username=?");
            pst.setString(1, values[0]);
            
            rs = pst.executeQuery();
            
            if(rs != null) {
            	int author = rs.getInt(0);
            	
                pst = conn.prepareStatement("SELECT * FROM category WHERE name=?");
                pst.setString(1, values[1]);
                
                rs = pst.executeQuery();
            	
                if(rs != null) {
                	int category = rs.getInt(0);
                    pst = conn.prepareStatement("Insert INTO post(author, topic, content, date) VALUES (?,?,?,NOW())");
                    pst.setString(1, author+"");
                    pst.setString(2, values[2]);
                    pst.setString(3, values[3]);

                    pst.executeUpdate();
                   
                    status = true;	
                }

            }

        } catch (Exception e) {
            System.out.println(e);
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (pst != null) {
                try {
                    pst.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return status;
    }
}
