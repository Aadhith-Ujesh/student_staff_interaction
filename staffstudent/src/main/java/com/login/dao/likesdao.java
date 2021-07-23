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
import java.sql.ResultSet;
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
 * @author USERi
 */
public class likesdao extends HttpServlet {

//    String sql = "insert into petitions values(?,?)";
    String url = "jdbc:mysql://localhost:3306/login?autoReconnect=true&useSSL=false";
    String username = "root";
    String password = "Vishak1@3";
    public void update(String user,String head) throws SQLException, ClassNotFoundException
    {  System.out.println("hey");
        try {
            
            String sql1 = "select " + user + " from petitions where heading =?";
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,username,password);
            PreparedStatement st1 = con.prepareStatement(sql1);
            st1.setString(1,head);
            ResultSet rs = st1.executeQuery();
            ArrayList<String> checking = new ArrayList<String>();
            while( rs.next() )
            {
                checking.add(rs.getString(1));
            }
            String[] check = new String[checking.size()];
            check = checking.toArray(check);
            System.out.println("value of check");
            System.out.println(check[0]);
            if(check[0].equals("0") || check[0].equals("null"))
       
            {
            String sql2 = "UPDATE petitions SET "+ user + " = 1 where heading = ? ";
            System.out.println(user);

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,username,password);
            PreparedStatement st2 = conn.prepareStatement(sql2);
            st2.setString(1,head);
//            st.setString(1,user);
//            st.setString(1,link );
//            st.setString(2, title);
            int result = st2.executeUpdate();
            System.out.println(result);
            
            return;  
             } 
            else
            {
                String sql3 = "UPDATE petitions SET "+ user + " = 0 where heading = ?"  ;
            System.out.println(user);

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,username,password);
            PreparedStatement st2 = conn.prepareStatement(sql3);
            st2.setString(1,head);
//            st.setString(1,user);
//            st.setString(1,link );
//            st.setString(2, title);
            int result = st2.executeUpdate();
            System.out.println(result);
            return ;
            }
        }
        
        catch (ClassNotFoundException ex) {
            Logger.getLogger(LoginDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ;
    }
    }

    


