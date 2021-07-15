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
<link href="https://fonts.googleapis.com/css2?family=Taviraj:ital,wght@0,700;0,800;1,600&display=swap" rel="stylesheet">
</head>
<body>
    <h1 class="head">STUDENT-TEACHER INTERACTION PAGE</h1>  
    <form class="log" action="Login" method="POST">      
        <h1>LOGIN</h1>
        <input type="text" name="uname" placeholder="Username">
        <input type="password" name="password" placeholder="Password">
        <input type="submit" value="Login">
    </form>
</body>
</html>
