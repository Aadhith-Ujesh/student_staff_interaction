/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login;

import com.login.dao.assignmentdao;
import com.login.dao.petitiondao;
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
public class Petitiondetails extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
    
    String title = request.getParameter("title");
    String desc = request.getParameter("description");
//    System.out.println("im at assignmentdetailsdao");
    petitiondao dao = new petitiondao();
        try {
            dao.update(title,desc);
            response.sendRedirect("createpetition.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(Petitiondetails.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }
}
