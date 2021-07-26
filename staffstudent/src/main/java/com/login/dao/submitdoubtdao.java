/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login.dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SUDHARSAN
 */
public class submitdoubtdao
{
//    String sql = "insert into assignments values(?,?)";
    String url = "jdbc:mysql://localhost:3306/login?autoReconnect=true&useSSL=false";
    String username = "root";
    String password = "Vishak1@3";
    public void update(String user, String reply ,String title) throws SQLException
    {  System.out.println("hey");
        try {
            String sql = "UPDATE doubts SET "+ user +" = ? where heading = ?";
            System.out.println(user);
//            Class.forName("com.mysql.jdbc.Driver");
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,username,password);
            PreparedStatement st = con.prepareStatement(sql);
//            st.setString(1,user);
            st.setString(1,reply );
            st.setString(2, title);
            int result = st.executeUpdate();
            System.out.println(result);
            
            return;
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginDao.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }
}