<%-- 
    Document   : indexlogin.html
    Created on : Oct 6, 2022, 11:55:17 PM
    Author     : Dewmin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    
    <head>
        <title>Welcome to Phoenix Air</title>
        <link rel="stylesheet" href="css/StyleIndex.css">
        <link rel="stylesheet" href="css/Styleservice.css">
    </head>

    <body>
        <header>

        <div class="head">
            
            <h1>Welcome to Phoenix Air</h1>

            <div class="head2" id="head02">
    
            <form action="" >
                <label class="Selectform"><font color="yellow">LOGIN</font></label>
                <select name="languages" id="languages" onchange="ChangeLogger(this.value)">
                <option label="Login" id="Login"></option>
                <option value="User.jsp">User</option>
                <option value="Admin.jsp">Admin</option>
                <option value="StaffGradeOne.jsp">Staff - 01</option>
                <option value="StaffGradeTwo.jsp">Staff - 02</option></select>     
            </form>
        </div><br>
        <div class="pic"> </div>
        </div> 

 <div class = "width">
<div class = "services-container">
        <div class="slider">

            <div class="slides">
                <input type="radio" name="radio-btn" id="radio1">
                <input type="radio" name="radio-btn" id="radio2">
                <input type="radio" name="radio-btn" id="radio3">
                <input type="radio" name="radio-btn" id="radio4">

                <div class="slide first">
                    <img src="img/dubai.jpg" alt="">   
                </div>

                <div class="slide">
                    <img src="img/japan.jpg" alt="">   
                </div>

                <div class="slide">
                    <img src="img/london.jpg" alt="">   
                </div>

                <div class="slide">
                    <img src="img/paris.jpg" alt="">   
                </div>

                <div class="navigation-auto">
                    <div class="auto-btn-1"></div>
                    <div class="auto-btn-2"></div>
                    <div class="auto-btn-3"></div>
                    <div class="auto-btn-4"></div>
                </div>

                <div class="navigation-mannual">
                    <label for="radio1" class="mannual-btn"></label>
                    <label for="radio2" class="mannual-btn"></label>
                    <label for="radio3" class="mannual-btn"></label>
                    <label for="radio4" class="mannual-btn"></label>
                </div>

            </div>
        </div>
    </div></div>


</header>
        <script type="text/javascript">
            
        var counter =1;
        setInterval(function()
            {
                document.getElementById('radio'+counter).checked = true;
                counter++;

                if(counter>4)
                {
                    counter = 1;
                }
            },5000)


        function ChangeLogger(src) 
        {
            window.location=src;
        }
        </script>

    </body>
    
</html>
