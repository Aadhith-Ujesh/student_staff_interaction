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
public class getas extends HttpServlet
{
    String sql = "select * from assignments";
    String url = "jdbc:mysql://localhost:3306/login?autoReconnect=true&useSSL=false";
    String username = "root";
    String password = "Vishak1@3";
    
    public void getassigns(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException
    {  System.out.println("hey");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,username,password);
            PreparedStatement st = con.prepareStatement(sql);
//            st.setString(1, "heading");
//            st.setString(2,"description");
            ArrayList<String> titles = new ArrayList<String>();
            ArrayList<String> decs = new ArrayList<String>();
            ResultSet rs = st.executeQuery();
            while( rs.next() )
            {
                titles.add(rs.getString(1));
                decs.add(rs.getString(2));
                
            }
            String[] titleArr = new String[titles.size()];
            titleArr = titles.toArray(titleArr);

            String[] descArr = new String[decs.size()];
            descArr = decs.toArray(descArr);
            
            HttpSession session=request.getSession();
            session.setAttribute("titles", titleArr);
            session.setAttribute("descs", descArr);
            System.out.println("session successful");
//            System.out.println(titleArr.toString());
//            System.out.println(descArr.toString());
            response.sendRedirect("doassign.jsp");
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ;
    }
}