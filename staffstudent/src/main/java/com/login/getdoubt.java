/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login;

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
import javax.servlet.http.HttpSession;

/**
 *
 * @author SUDHARSAN
 */
public class getdoubt extends HttpServlet 
{
    String sql = "select * from doubts";
    String url = "jdbc:mysql://localhost:3306/login?autoReconnect=true&useSSL=false";
    String username = "root";
    String password = "Vishak1@3";
    
    public void getdoubts(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException
    {  System.out.println("hey");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,username,password);
            PreparedStatement st = con.prepareStatement(sql);
//            st.setString(1, "heading");
//            st.setString(2,"description");
            ArrayList<String> titles = new ArrayList<String>();
            ArrayList<String> decs = new ArrayList<String>();
            ArrayList<String> mam = new ArrayList<String>();
            ArrayList<String> doubts = new ArrayList<String>();
            ResultSet rs = st.executeQuery();
            while( rs.next() )
            {
                titles.add(rs.getString(1));
                decs.add(rs.getString(2));
                mam.add(rs.getString(3));
                doubts.add(rs.getString(4));
            }
            String[] titleArr = new String[titles.size()];
            titleArr = titles.toArray(titleArr);

            String[] descArr = new String[decs.size()];
            descArr = decs.toArray(descArr);
            
            String[] mamArr = new String[mam.size()];
            mamArr = mam.toArray(mamArr);
            
             String[] doubtsArr = new String[doubts.size()];
            doubtsArr = doubts.toArray(doubtsArr);
            for(int i=0;i<doubtsArr.length;i++)
            {
            System.out.println(doubtsArr[i]);
            }
            HttpSession session=request.getSession();
            session.setAttribute("doubttitles", titleArr);
            session.setAttribute("doubtdescs", descArr);
            session.setAttribute("mamreply", mamArr);
            session.setAttribute("doubts", doubtsArr);
            System.out.println("session successful for getas");
//            System.out.println(titleArr.toString());
//            System.out.println(descArr.toString());
            return;
//            String user = session.getAttribute("username").toString();
//            if(user.charAt(0)=='s')
//                response.sendRedirect("doassign.jsp");
//            else
//                response.sendRedirect("doassign.jsp");
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ;
    }
}