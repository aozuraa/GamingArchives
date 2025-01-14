<%-- 
    Document   : login
    Created on : 02 28, 22, 12:46:41 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="icon" href="../assets/logo.svg">
        <link rel="stylesheet" href="../assets/css/asset-sheet.css">
        <link rel="stylesheet" href="../assets/css/navbar-style.css">
        <link rel="stylesheet" href="../assets/css/signup-style.css">
          
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    
        <link href="https://fonts.googleapis.com/css2?family=Amaranth&family=Quicksand&family=VT323&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Audiowide&effect=anaglyph">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Press+Start+2P&effect=anaglyph">
        
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">
        
        <script src="https://kit.fontawesome.com/db09b338f9.js" crossorigin="anonymous"></script>
        <title>UST-TGS</title>
    </head>
    <body>
         <!-- navbar -->
        <div class="bar"> 
            <div class="nav-content">
                <div class="nav-title">
                    <img class="nav-logo" src="../assets/logo.svg" alt="UST-TGS logo">
                    <a class="" href="/"> 
                        <h1>UST Thomasian Gaming Society</h1>
                    </a>
                </div>
                <div class="nav-options" >
                    <a class="option" href="../home.jsp">Home</a>
                    <a class="option" href="../subpage/about.jsp">About</a>
                    <a class="option" href="../subpage/events.jsp">Events</a>
                    <a class="option" href="/">Contact</a>
                    <form action="../login/login.jsp">
                        <input type="submit" value="Login"  class="button"/>
                    </form>
            
                </div>
            </div>
        </div>
         
        <section class="signup-section">
            <form class="signup-container" method="post" action="SignupServlet">
                <h2>Sign Up</h2>
                <h3>Already registered? <a href="../login/login.jsp">Login</a></h3>
                
                <div class="input-container">
                    
                    <label for="email"><b>Email</b></label>    
                    <div class="input">
                        <input type="text" placeholder="Enter Email" name="email" required>
                    </div>
                    
                    <label for="uname"><b>Username</b></label>
                    <div class="input">
                        <input type="text" placeholder="Enter Username" name="uname" required>
                        
                    </div>
                    
                    <label for="psw"><b>Password</b></label>    
                    <div class="input">
                       
                        <input type="password" placeholder="Enter Password" name="psw" required>
                        <span class="material-icons-outlined psw-show">visibility_off</span>
                    </div>
                      
                    <div class="input">
                        <input type="password" placeholder="Confirm Password" name="cpsw" required>
                        <span class="material-icons-outlined psw-show">&#xe8f5;</span>
                    </div>
                    
                    
                 
                </div>
                
                <div class="privacy-policy"> 
                    <input type="checkbox" id="privacy-policy" name="privacy-policy" value='' >
                    <label for="privacy-policy"> 
                        I have read and agreed to the website's <a href="privacypolicy.jsp">Privacy Policy</a>
                    </label>
                </div>
                <button type="submit">SIGN UP</button>
                
            </form>
        </section>       
    </body>
</html>
