/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
public class LoginDao 
{
    String sql = "select * from clogin where user=? and pass=?";
    String url = "jdbc:mysql://localhost:3306/login?autoReconnect=true&useSSL=false";
    String username = "root";
    String password = "Vishak1@3";
    public boolean check(String uname,String pass) throws SQLException
    {
        try {
    
//            Class.forName("com.mysql.jdbc.Driver");
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,username,password);
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, uname);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            if(rs.next())
            {
                return true;
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
