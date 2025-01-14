<%-- 
    Document   : signup-verify
    Created on : 03 1, 22, 5:10:19 PM
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
        <link rel="stylesheet" href="../assets/css/verify-style.css">
          
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
        <!--TODO: CONNECT SIGNUP SERVLET-->
        <!--TODO: CONNECT SIGNUP VERIFICATION-->
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
        
        <section class="verify-section">
            <form class="verify-container" method="post" action="SignupVerifyServlet">
                <h2>Email Verification</h2>
                
                <div class="verify-signup-code">
                    <p>We have sent a verification code to your email-</p>
                    <p class="verify-email">juan.delacruz.cics@ust.edu.ph</p>
                </div>
                
                
                <div class="input-container">   
                    <label for="vcode"><b>Validate OTP</b></label>    
                    <div class="input">
                        <input type="" placeholder="Enter verification code" name="vcode" required>
                    </div>
                </div>
                
                <div class="submit-container">
                    <button type="submit">SUBMIT</button>
                    <a href="/">Resend Code</a>
                </div>
            </form>   
        </section>
    </body>
</html>
