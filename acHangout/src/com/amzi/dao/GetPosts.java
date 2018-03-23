package com.amzi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;

public class GetPosts extends HttpServlet {
	@SuppressWarnings("resource")
	public static String[][] getRecord(int categoryID, int startID, int endID) {
		
		int postMax = endID - startID;
		String record[][] = new String[postMax][3];
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
            
            pst = conn.prepareStatement("SELECT * FROM posts WHERE catid = ? and (id >= ? and id <= ?)");
            pst.setString(1, categoryID+"");
            pst.setString(2, startID+"");
            pst.setString(3, endID+"");
            
            rs = pst.executeQuery();
            
            while(rs.next()){
            	for(int i = 0; i <= postMax; i++) {
            		record[i][0] = rs.getString("topic");
            		record[i][1] = rs.getString("content");
            		record[i][2] = rs.getString("date");
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
        return record;
	}
}
