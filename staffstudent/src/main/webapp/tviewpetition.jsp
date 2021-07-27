<%-- 
    Document   : tviewpetition
    Created on : 21-Jul-2021, 3:42:48 pm
    Author     : SUDHARSAN
--%>

<%@page import="com.login.Login"%>
<%@page import="com.login.Login"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.sql.SQLException"%>
<%@page import="com.login.getpetition"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="home1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dosis:wght@300&display=swap" rel="stylesheet">
</head>
<body>
     <%  
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        response.setHeader("Pragma","no-cache");
        response.setHeader("Expires","0");
        if(session.getAttribute("username")==null)
        {
             response.sendRedirect("login.jsp") ;
        }
        getpetition hey = new getpetition();
        
        try {
            hey.getpet(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        String user = session.getAttribute("username").toString();
        
        String [] likes = new String[0];
        
        if(user.equals("sAadhith"))
        {
            likes = (String [])session.getAttribute("aadhithlike");
        }
        else if(user.equals("sSudharsan"))
        {
            likes = (String [])session.getAttribute("sudharsanlike");
        }
        else
        {
            likes = (String [])session.getAttribute("aravindlike");
        }
        String likearr="";
        for(int i=0;i<likes.length;i++)
        {
             likearr += likes[i] +  "$";
         }
        String [] titles = (String[]) session.getAttribute("head");
        String titlearr="";
        for(int i=0;i<titles.length;i++)
            {
             titlearr += titles[i] +  "$";
            }
        String [] descs = (String[]) session.getAttribute("dec");
        String descarr = "";
        for(int i=0;i<descs.length;i++)
        {   
            descarr += descs[i] +  "$";
        }
        
        %>
  <!--  <form action="getas" method="getassigns">   
        <input type="submit" value = "refresh">
    </form>-->
<!--    <a href="/staffstudent/getas">refresh</a>-->
    <img src="PicsArt_07-22-11.41.53.png" id="logo">
    <nav class="navbar">
        <h1 id="headi">TEAMS 2.0</h1>
            <div class="links">
                <ul>
                       <li class="zy"><a href= "/staffstudent/tassignment.jsp">Assignment</a></li>
                        <li class="zy"><a href= "/staffstudent/petition.jsp">Petition</a></li>  
                        <li class="zy"><a href= "/staffstudent/sdoubt.jsp">Doubts</a></li>
                        <li class="zy"><a href= "/staffstudent/Logout">Logout</a></li>   
                </ul>
            </div>
    </nav>
    <div class="petition">
        
        <h1 style="position: absolute; margin-top: 50px;margin-left: 45%; ">PETITIONS:</h1>
        <div id="cards" style="margin-top: 130px;">

        </div>
    </div>
    <footer style="background-color:rgb(73, 18, 18);position: absolute;margin-top: 100%;border: 2px solid rgb(0, 0, 0);">
        <div class="up">
            <div class="f" style="height: 100px;">
                 <h1 style="margin-left: 8px; font-size: 50px; padding-bottom: 0%;margin-bottom: 2px;">MIT</h1>
                 <p style="margin-left:8px ;">Madras Institute<br> of Technology</p>
            </div>
            <div class="f webhead" style="margin-left: 15%;">
                <img src="PicsArt_07-22-11.41.53.png" id="logofoot">
                <h1 style="font-size: 40px;">TEAMS 2.0</h1>
            </div>
            <div class="clear made" style="margin-left: 21%;">
                <p>
                    Designed by Aadhith, Sudharsan, Aravind
                </p>
            </div>
            <div class="clear made">
                <p> TEAMS 2.0 is designed by a trio. MS Teams takes 1 GB of memory which we consider as a waste of storage when we go back to offline classes. So this is an alternative to TEAMS 2.0. We hope MIT recognizes our website and makes it official. It contains all the features which are required during offline classes </p>
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
        
    <script>
//        function myfunc()
//        {
//            document.getElementById("likebut").style.background = "blue";
//        }
        console.log(titles);
        var titles = "<%=titlearr%>";
        var description = "<%=descarr%>";
        var likes = "<%=likearr%>";
        var titles = titles.split("$");
        var description = description.split("$");
        var likes = likes.split("$");
        console.log(titles);
        console.log(description);
        for(let i = 0; i<titles.length-1; i++)
        {
            if(likes[i]=== "1")
            {
            document.getElementById("cards").innerHTML+="<div class='hi'> <h2><u> " + titles[i] +"</u></h2><br><p>"+description[i] + "<form class = 'assub' action='likedetails' method='POST'> <input type='text' name='id' value="+ (i+1) + "> <input type='submit' value='like' style='background-color:blue;'> </form></p> </div> ";
            }
            else
            {
            document.getElementById("cards").innerHTML+="<div class='hi'> <h2> <u>" + titles[i] +"</u></h2><br><p>"+description[i] + "<form class = 'assub' action='likedetails' method='POST'> <input type='text' name='id' value="+ (i+1) + "> <input id= 'likebut' type='submit' value='like'> </form></p> </div> ";
            }
        }

    </script>
</body>
</html>