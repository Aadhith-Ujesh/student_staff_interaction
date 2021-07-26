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
import java.util.ArrayList;
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
public class doubtdao extends HttpServlet 
{
    String sql = "insert into doubts(heading,description,user) values(?,?,?)";
    String url = "jdbc:mysql://localhost:3306/login?autoReconnect=true&useSSL=false";
    String username = "root";
    String password = "Vishak1@3";
    public void update(String title,String desc,String user) throws SQLException
    {  System.out.println("hey");
        try {
            System.out.println(title);
//            Class.forName("com.mysql.jdbc.Driver");
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,username,password);
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, title);
            st.setString(2, desc);
            st.setString(3,user);
            int result = st.executeUpdate();
            System.out.println(result);
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ;
    }
}