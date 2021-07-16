<%-- 
    Document   : petition
    Created on : 15 Jul, 2021, 7:56:18 PM
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
                        <li class="zy"><a href= "/staffstudent/assignment.jsp">Assignment</a></li>
                        <li class="zy"><a href= "/staffstudent/petition.jsp">Petition</a></li>   
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
    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-6">
            <h6>About</h6>
            <p class="text-justify">Scanfcode.com <i>CODE WANTS TO BE SIMPLE </i> is an initiative  to help the upcoming programmers with the code. Scanfcode focuses on providing the most efficient code or snippets as the code wants to be simple. We will help programmers build up concepts in different programming languages that include C, C++, Java, HTML, CSS, Bootstrap, JavaScript, PHP, Android, SQL and Algorithm.</p>
          </div>

          <div class="col-xs-6 col-md-3">
            <h6>Categories</h6>
            <ul class="footer-links">
              <li><a href="http://scanfcode.com/category/c-language/">C</a></li>
              <li><a href="http://scanfcode.com/category/front-end-development/">UI Design</a></li>
              <li><a href="http://scanfcode.com/category/back-end-development/">PHP</a></li>
              <li><a href="http://scanfcode.com/category/java-programming-language/">Java</a></li>
              <li><a href="http://scanfcode.com/category/android/">Android</a></li>
              <li><a href="http://scanfcode.com/category/templates/">Templates</a></li>
            </ul>
          </div>

          <div class="col-xs-6 col-md-3">
            <h6>Quick Links</h6>
            <ul class="footer-links">
              <li><a href="http://scanfcode.com/about/">About Us</a></li>
              <li><a href="http://scanfcode.com/contact/">Contact Us</a></li>
              <li><a href="http://scanfcode.com/contribute-at-scanfcode/">Contribute</a></li>
              <li><a href="http://scanfcode.com/privacy-policy/">Privacy Policy</a></li>
              <li><a href="http://scanfcode.com/sitemap/">Sitemap</a></li>
            </ul>
          </div>
        </div>
        <hr>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-6 col-xs-12">
            <p class="copyright-text">Copyright &copy; 2017 All Rights Reserved by 
         <a href="#">Scanfcode</a>.
            </p>
          </div>

          <div class="col-md-4 col-sm-6 col-xs-12">
            <ul class="social-icons">
              <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
              <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>   
            </ul>
          </div>
        </div>
      </div>
</footer>
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
