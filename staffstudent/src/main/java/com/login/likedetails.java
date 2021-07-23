/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login;

import com.login.dao.likesdao;
import com.login.dao.submitdao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author USERi
 */
public class likedetails extends HttpServlet {


   protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
    
 
    int id = Integer.parseInt(request.getParameter("id"))-1;
    System.out.println(id);
    System.out.println("im at likedetails");

    HttpSession session=request.getSession();
    String [] heads = (String[]) session.getAttribute("head");
    
    String user = session.getAttribute("username").toString();
    
    likesdao hel = new likesdao();
    System.out.println(heads[id]);
        try {
            hel.update(user,heads[id]);
            response.sendRedirect("tviewpetition.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(assignmentdetails.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
           Logger.getLogger(likedetails.class.getName()).log(Level.SEVERE, null, ex);
       }
   }
}

    
