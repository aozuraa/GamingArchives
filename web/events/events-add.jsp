<%-- 
    Document   : events-add
    Created on : 03 12, 22, 9:49:42 PM
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
        <link rel="stylesheet" href="../assets/css/events-add-style.css">
  
          
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    
        <link href="https://fonts.googleapis.com/css2?family=Amaranth&family=Quicksand&family=VT323&family=Poppins&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Audiowide&effect=anaglyph">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Press+Start+2P&effect=anaglyph">
        
        <script language="JavaScript" type="text/javascript" src="/js/jquery-1.2.6.min.js"></script>
        <script language="JavaScript" type="text/javascript" src="/js/jquery-ui-personalized-1.5.2.packed.js"></script>
        <script language="JavaScript" type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
    
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">
         
        <script src="https://kit.fontawesome.com/db09b338f9.js" crossorigin="anonymous"></script>
        <title>UST-TGS</title>
    </head>
    <body>
        <!--TODO: CONNECT ADD EVENT TO DATABASE ONLY AVAILABLE TO ADMIN-->
        <!-- navbar -->
        <div class="bar"> 
            <input type="checkbox" id="check">
            <label for="check" class="checkbtn">
                   <i class="fas fa-bars"></i>
            </label>
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
                    <a class="option" style="color:#B92432;" href="../subpage/events.jsp">Events</a>
                    <a class="option" href="/">Contact</a>
                    <form  action="../login/login.jsp">
                        <input type="submit" value="Login"  class="button"/>
                    </form>
            
                </div>
            </div>
        </div>
        
        <section class="add-events-section">
            <div class="add-events-container">
                <div class="add-events-head">
                   <h2>Add Event</h2>          
                </div>
                        
                <form class="add-events-form" action="../home.jsp">
                    <div class="input">
                        <label for="ename"><b>Event Name:</b></label>    
                        <input type="text" placeholder="Enter Event Name" name="ename" required>
                    </div>

                    <div class="input">
                        <label for="edescription"><b>Event Description:</b></label>
                        <input type="text" placeholder="Enter Event Description" name="edescription" required>
                    </div> 
                    
                    <div class="input">
                        <label for="edate"><b>Event Date:</b></label>
                        <input type="date" placeholder="Enter Event Date" name="edate" required>
                    </div> 
                    
                    <div class="add-event-buttons"> 
                            <input type="button" onclick="location.href='../subpage/events.jsp';" value="GO BACK" class="button" />
                            <input type="submit" value="SUBMIT"  class="button"/>
                            <input type="button" onclick="location.href='../home.jsp';" value="LOGOUT" class="button" />
                    </div>   
                </form>
            
                

            </div>
            
           
        </section>
    </body>
</html>
