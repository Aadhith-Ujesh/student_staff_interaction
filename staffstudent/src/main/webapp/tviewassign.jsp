<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="home1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
     <%  out.println("hi");
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        response.setHeader("Pragma","no-cache");
        response.setHeader("Expires","0");
        if(session.getAttribute("username")==null)
        {
             response.sendRedirect("login.jsp") ;
        }
        String [] titles = (String[]) session.getAttribute("titles");
        String [] Aadhith = (String[]) session.getAttribute("aadhith");
        String [] Sudharsan = (String[]) session.getAttribute("sudharsan");
        String [] Aravind = (String[]) session.getAttribute("aravind");
        String titlearr="";
        for(int i=0;i<titles.length;i++)
            {
             titlearr += titles[i] +  "$";
            }
        String [] descs = (String[]) session.getAttribute("descs");
        String descarr = "";
        for(int i=0;i<descs.length;i++)
        {   
            descarr += descs[i] +  "$";
        }
        String aadhitharr="";
        for(int i=0;i<titles.length;i++)
            {
             aadhitharr += Aadhith[i] +  "$";
            }
        String sudharsanarr="";
        for(int i=0;i<titles.length;i++)
            {
             sudharsanarr += Sudharsan[i] +  "$";
            }
        String aravindarr="";
        for(int i=0;i<titles.length;i++)
            {
             aravindarr += Aravind[i] +  "$";
            }
        %>
  
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
    <div class="petition">
        
        <h1 style="position: absolute; margin-top: 50px;margin-left: 45%;">ASSIGNMENTS</h1>
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
                <h1 style="font-size: 40px;">TEAMS 2.0</h1>
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
        
    <script>
        
        var titles = "<%=titlearr%>";
        var description = "<%=descarr%>";
        var aadhith = "<%=aadhitharr%>";
        var sudharsan = "<%=sudharsanarr%>";
        var aravind = "<%=aravindarr%>";
        var titles = titles.split("$");
        var description = description.split("$");
        var aadhith = aadhith.split("$");
        var sudharsan = sudharsan.split("$");
        var aravind = aravind.split("$");
        var a="";
        var s="";
        var ar="";
        console.log(titles);
        console.log(description);
        for(let i = 0; i<titles.length-1; i++)
        {
         if(aadhith[i]==="null")
         {
             a = "not submitted";
             aadhith[i]="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fthumbs.dreamstime.com%2Fz%2Fnot-completed-rubber-stamp-grunge-design-dust-scratches-effects-can-be-easily-removed-clean-crisp-look-color-easily-83440416.jpg&f=1&nofb=1"
         }
         else
         {
             a = "submitted";
         }
         if(sudharsan[i]==="null")
         {
             s ="not submitted"
             sudharsan[i]="https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fthumbs.dreamstime.com%2Fz%2Fnot-completed-rubber-stamp-grunge-design-dust-scratches-effects-can-be-easily-removed-clean-crisp-look-color-easily-83440416.jpg&f=1&nofb=1"
         }
         else
         {
             s = "submitted";
         }
         if(aravind[i]==="null")
         {
             ar="not submitted"
             aravind[i] = "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fthumbs.dreamstime.com%2Fz%2Fnot-completed-rubber-stamp-grunge-design-dust-scratches-effects-can-be-easily-removed-clean-crisp-look-color-easily-83440416.jpg&f=1&nofb=1"
         }
         else
         {
             ar = "submitted";
         }
        document.getElementById("cards").innerHTML+="<div class='hi'> <p> " + titles[i] +"<br>"+description[i]+"<br> Aadhith:" + "<a href='"+ aadhith[i]+"'>"+a+"</a>" +"<br> Sudharsan:" + "<a href='"+sudharsan[i]+"'>"+s+"</a>" + "<br> Aravind:" + "<a href='"+aravind[i]+"'>"+ar+"</a>" + "</p> </div> ";
        }

    </script>
</body>
</html>
