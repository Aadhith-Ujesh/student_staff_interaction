<%-- 
    Document   : tassignment
    Created on : 15 Jul, 2021, 9:38:57 PM
    Author     : USERi
--%>

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
</body>
</html>