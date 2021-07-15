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
</head>
<body>
    <%
        if(session.getAttribute("username")==null)
        {
            response.sendRedirect("login.jsp");
        }
        
    %>
    <nav class="navbar">
        <h1>Madras Institute of Technology</h1>
            <div class="links">
                <ul>
                        <li class="zy"><a href= "/assignment.html">Assignment</a></li>
                        <li class="zy"><a href= "/petition.html">Petition</a></li>   
                        <li class="zy"><a href= "/login.html">Logout</a></li>   
                </ul>
            </div>
    </nav>
</body>
</html>
