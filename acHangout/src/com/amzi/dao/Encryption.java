package com.amzi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Encryption {
	private String code;
	
	public static boolean encrypt(String code) {        
		boolean status = false;
        Connection conn = null;
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

            pst.executeUpdate();
           
            

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
	
	private void setCode(String code) {
		this.code = code;
	}
}
