<%-- 
    Document   : tpetition
    Created on : 15 Jul, 2021, 9:40:30 PM
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
                        <li class="zy"><a href= "/staffstudent/tassignment.jsp">TAssignment</a></li>
                        <li class="zy"><a href= "/staffstudent/tpetition.jsp">TPetition</a></li>   
                        <li class="zy"><a href= "/staffstudent/Logout">Logout</a></li>   
                </ul>
            </div>
    </nav>
    <div class="petition">
        <h1 style="color: blue;">Create a petition</h1>
        <h1>Available Petitions:</h1>
        <div id="cards">

        </div>
    </div>
    <script>
        var array = ["hi","one more","two","three","four","foive","sUDHARSAN","aadhith"]
        for(let i = 0; i<array.length; i++)
        {
            console.log("hi")
            document.getElementById("cards").innerHTML+="<div class='hi'> <p> " + array[i] + "</div> </p>";
        }

    </script>
</body>
</html>

