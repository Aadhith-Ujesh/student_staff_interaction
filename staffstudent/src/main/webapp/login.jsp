<%-- 
    Document   : login
    Created on : 15 Jul, 2021, 7:54:38 PM
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
    <link rel="stylesheet" href="login.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dosis:wght@300&display=swap" rel="stylesheet">
</head>
<body>
    <%  String errmsg ="";
        try{
        String k =session.getAttribute("err").toString();
        System.out.println(k);
        if(k.equals("true"))
        {
            errmsg="";
        }
        else
        {
            errmsg = "Username and password doesn't match";
        }
        }
        catch(Exception e){
            System.out.println("Something went wrong.");
        }
        %>
    <img src="PicsArt_07-22-11.20.16.png" id="logo">
    <h1 class="head" >TEAMS 2.0</h1>
    <form class="log" action="Login" method="POST">      
        <h1>LOGIN</h1>       
        <input type="text" name="uname" placeholder="Username">
        <input type="password" name="password" placeholder="Password">
        <input type="submit" value="Login">
        <p id="err" style="z-index: 15; color: red; font-weight: 700"></p>
    </form>
    <script>
        
        var err = "<%=errmsg%>";
        console.log(err);
        document.getElementById("err").innerHTML+= err ;
        
    </script>
</body>
</html>
