<html>
<?php 
require 'connection.php';
include 'session1.php';?>
    <head>
        <title>Small quizz website</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link href = styleadmin.css rel= 'stylesheet'>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    </head>
    <body>
        <div id = top>
           
           Small Quizzes
            
            <a href=logoutadmin.php><button id = logout >Logout</button></a>
        </div>
        <div id = welcome ><p>Welcome! Admin</p></div>
        <div id = name>
            <p><a href = 'viewuser.php'><button id = user > View Users Information </button></p>
            <p><a href = 'welcomeadmin.php'><button id = quiz>View Quizes Information</button></p>
        </div>
</body>
</html>
