<%-- 
    Document   : createassign
    Created on : 18-Jul-2021, 2:48:31 pm
    Author     : SUDHARSAN
--%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="createassign.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <!-- 
        <%  
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        response.setHeader("Pragma","no-cache");
        response.setHeader("Expires","0");
        if(session.getAttribute("username")==null)
        {
            response.sendRedirect("login.jsp");
        }
        %>
    --> 
    <nav class="navbar">
        <h1>Madras Institute of Technology</h1>
            <div class="links">
                <ul>
                        <li class="zy"><a href= "/staffstudent/tassignment.jsp">Assignment</a></li>
                        <li class="zy"><a href= "/staffstudent/tpetition.jsp">Petition</a></li>   
                        <li class="zy"><a href= "/staffstudent/Logout">Logout</a></li>   
                </ul>
            </div>
    </nav>
    <div class="split">
        <form  class="cassign" action="assignmentdetails" method="POST">
        TITLE OF THE ASSIGNMENT:<br>
        <input type="text" name="title" required><br>
        ASSIGNMENT DESCRIPTION:<br>
        <textarea name="description" rows="6" cols="30"></textarea>
        <input type="submit" value="CREATE" >
        </form>
 </div> 
 <footer style="background-color:rgb(73, 18, 18);position:absolute;margin-top: 100vh;">
        <div class="up">
            <div class="f" style="height: 100px;">
                 <h1 style="margin-left: 8px; font-size: 50px; padding-bottom: 0%;margin-bottom: 2px;">MIT</h1>
                 <p style="margin-left:8px ;">Madras Institute<br> of Technology</p>
            </div>
            <div class="f webhead" style="margin-left: 15%;">
                <h1 style="font-size: 40px;">Team name</h1>
            </div>
            <div class="clear made" style="margin-left: 21%;">
                <p>
                    Designed by Aadhith, Sudharsan, Aravind
                </p>
            </div>
            <div class="clear made">
                <p> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, </p>
            </div>
        </div>
        <div>
            <hr style="width:90%;">
            <p style="margin-left: 40%; color: white;">Copyright &copy; 2017 All Rights Reserved by</p>
            <p style="margin-left: 48%;color: white; line-height:1px;">MIT</p>
            <div class="social">
                <a href="https://twitter.com" class="fa fa-twitter" target="_blank" style="margin-left: 41%;"></a> 
                <a href="https://facebook.com" class="fa fa-facebook-f" target="_blank"></a> 
                <a href="https://pinterest.com" class="fa fa-pinterest" target="_blank"></a> 
                <a href="https://instagram.com" class="fa fa-instagram" target="_blank"></a> 
            </div>   
        </div>
    </footer>
</body>
</html>
</body>
</html>