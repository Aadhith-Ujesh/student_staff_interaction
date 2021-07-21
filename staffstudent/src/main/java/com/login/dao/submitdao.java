package com.login.dao;

import java.util.logging.Level;
import java.util.logging.Logger;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.*;
/**
 *
 * @author USERi
 */
public class submitdao
{
//    String sql = "insert into assignments values(?,?)";
    String url = "jdbc:mysql://localhost:3306/login?autoReconnect=true&useSSL=false";
    String username = "root";
    String password = "Vishak1@3";
    public void update(String user, String link ,String title) throws SQLException
    {  System.out.println("hey");
        try {
            String sql = "UPDATE assignments SET "+ user +" = ? where heading = ?";
            System.out.println(user);
//            Class.forName("com.mysql.jdbc.Driver");
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,username,password);
            PreparedStatement st = con.prepareStatement(sql);
//            st.setString(1,user);
            st.setString(1,link );
            st.setString(2, title);
            int result = st.executeUpdate();
            System.out.println(result);
            
            return;
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ;
    }
}