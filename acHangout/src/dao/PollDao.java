package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class PollDao {
	public static boolean validate(String name, String pass) {        
        boolean status = false;
       
        
        Connection conn = null;
        
        
        /*A SQL statement is precompiled and stored in a PreparedStatement object. 
         * This object can then be used to efficiently execute this statement multiple times. */
        PreparedStatement pst = null;
       
        
        ResultSet rs = null;

        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "form";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "root";
        try {
            Class.forName(driver).newInstance();
           
            conn = DriverManager
                    .getConnection(url + dbName, userName, password);
            //The question marks will then be replaced in the setString(nth question mark, replaced with) method.
            pst = conn
                    .prepareStatement("select * from login where user=? and password=?");
            pst.setString(1, name);
            pst.setString(2, pass);

            rs = pst.executeQuery();
            status = rs.next();

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
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return status;
    }
}


