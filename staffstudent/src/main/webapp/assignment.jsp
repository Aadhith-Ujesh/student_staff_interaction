<%-- 
    Document   : assignment
    Created on : 15 Jul, 2021, 7:55:38 PM
    Author     : USERi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <%
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        response.setHeader("Pragma","no-cache");
        response.setHeader("Expires","0");
        if(session.getAttribute("username")==null)
        {
            response.sendRedirect("login.jsp");
        }
        
    %>
    <nav class="navbar">
        <h1>Madras Institute of Technology</h1>
            <div class="links">
                <ul>
                        <li class="zy"><a href= "/staffstudent/assignment.jsp">Assignment</a></li>
                        <li class="zy"><a href= "/staffstudent/petition.jsp">Petition</a></li>   
                        <li class="zy"><a href= "/staffstudent/Logout">Logout</a></li>   
                </ul>
            </div>
    </nav>
    <div class="petition">
        <h1 style="color: blue;">Assignments</h1>
    </div>
</body>
</html>
