/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login;

import com.login.dao.doubtdao;
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
 * @author SUDHARSAN
 */
public class doubtdetails extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
            protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
    
    String title = request.getParameter("title");
    String desc = request.getParameter("description");
    HttpSession session=request.getSession();
    String user=session.getAttribute("username").toString();
    System.out.println("im at assignmentdetailsdao");
    doubtdao doubt = new doubtdao();
        try {
            doubt.update(title,desc,user);
            response.sendRedirect("askdoubt.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(assignmentdetails.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }
}
