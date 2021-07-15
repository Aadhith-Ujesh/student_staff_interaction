/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Login extends HttpServlet {

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    String user = request.getParameter("uname");
    String pass = request.getParameter("password");
    if(user.equals("aad") && pass.equals("123"))
    {
        HttpSession session=request.getSession();
        session.setAttribute("username",user);
        response.sendRedirect("assignment.jsp");
    }
    else
    {
        response.sendRedirect("login.jsp");
    }
        
    
}
}
