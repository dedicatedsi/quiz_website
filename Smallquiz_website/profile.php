<html>
<?php 
require 'connection.php';
include 'session.php';?>
    <head>
        <title>Small quizz website</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link href = styleprofile.css rel = 'stylesheet'>
    </head>
    <body>
        <div id = top>
           
           Small Quizzes
            
            <a href = welcome.php><button id = home >Home</button></a>
            <a href=logout.php><button id = logout >Logout</button></a>
        </div>
        <prev>
        <div id = info>
            <h3>Account Details:</h3>
            <p id = mail>MailId :  <?php echo $user_check;?></p>
            <p class = name>FirstName :  <?php echo $user_fname;?></p>
            <p class = name>LastName  :  <?php echo $user_lname;?></p>
        </div>
</prev>
        <div>
            <a href = viewscore.php><button id = but>View Previous Quiz Scores</button></a>
        </div>
      
</body>
</html>       














.