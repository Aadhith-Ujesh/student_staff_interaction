/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login;

import com.login.dao.submitdoubtdao;
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
public class submitdoubtdetails extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
    
    String reply = request.getParameter("submitreply");
    System.out.println(reply);

    int id = Integer.parseInt(request.getParameter("id"))-1;
    System.out.println(id);
    System.out.println("im at sumbitdetailsdao");
    HttpSession session=request.getSession();
    String [] titles = (String[]) session.getAttribute("doubttitles");

    String user = session.getAttribute("username").toString();
    submitdoubtdao hello = new submitdoubtdao();
    System.out.println(titles[id]);
    System.out.println(user);
        try {
            hello.update(user,reply,titles[id]);
            response.sendRedirect("tdoubt.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(assignmentdetails.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }
}