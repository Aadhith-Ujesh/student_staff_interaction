/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login;

import com.login.dao.LoginDao;
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

public class Login extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{

    String user = request.getParameter("uname");
    String pass = request.getParameter("password");
    
    LoginDao dao = new LoginDao();
    
        try {
            if(dao.check(user,pass))
            {   
                HttpSession session=request.getSession();
                session.setAttribute("username",user);
                if(user.charAt(0)=='s')
                {
                response.sendRedirect("assignment.jsp");
                }
                else if(user.charAt(0)=='t')
                {
                    response.sendRedirect("tassignment.jsp");
                }
            }
//    else if(user.equals("teach") && pass.equals("123"))
//    {
//        HttpSession session=request.getSession();
//        session.setAttribute("username",user);
//        response.sendRedirect("tassignment.jsp");
//    }
            else
            {   System.out.println(user);
                System.out.println(pass);
                response.sendRedirect("login.jsp");
            }   } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    
}
}
