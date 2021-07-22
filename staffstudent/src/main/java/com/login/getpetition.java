/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author USERi
 */
public class getpetition extends HttpServlet
{
    String sql = "select * from petitions";
    String url = "jdbc:mysql://localhost:3307/login?autoReconnect=true&useSSL=false";
    String username = "root";
    String password = "sudharsan123!@";
    
    public void getpet(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException
    {  System.out.println("hey");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,username,password);
            PreparedStatement st = con.prepareStatement(sql);
//            st.setString(1, "heading");
//            st.setString(2,"description");
            ArrayList<String> head = new ArrayList<String>();
            ArrayList<String> dec = new ArrayList<String>();
            ResultSet rs = st.executeQuery();
            while( rs.next() )
            {
                head.add(rs.getString(1));
                dec.add(rs.getString(2));
                
            }
            String[] headArr = new String[head.size()];
            headArr = head.toArray(headArr);

            String[] decArr = new String[dec.size()];
            decArr = dec.toArray(decArr);
            
            HttpSession session=request.getSession();
            session.setAttribute("head", headArr);
            session.setAttribute("dec", decArr);
            System.out.println("session successful for getpetition");
//            System.out.println(titleArr.toString());
//            System.out.println(descArr.toString());
//            response.sendRedirect("tassignment.jsp");
            return;
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ;
    }
}