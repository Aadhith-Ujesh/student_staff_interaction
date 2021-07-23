package com.login;

import com.login.dao.submitdao;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Arrays;
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
public class sumbitdetails extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
    
    String link = request.getParameter("submitlink");
    System.out.println(link);

    int id = Integer.parseInt(request.getParameter("id"))-1;
    System.out.println(id);
    System.out.println("im at sumbitdetailsdao");
    HttpSession session=request.getSession();
    String [] titles = (String[]) session.getAttribute("titles");

    String user = session.getAttribute("username").toString();
    submitdao hello = new submitdao();
    System.out.println(titles[id]);
        try {
            hello.update(user,link,titles[id]);
            response.sendRedirect("doassign.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(assignmentdetails.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    }
}