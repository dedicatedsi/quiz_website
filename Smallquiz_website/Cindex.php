
<html>
<?php
include 'session.php';?>
    <head>
        <title> C language</title>
        <link rel = "stylesheet" href = styleindex.css>
    </head>
    <body>
        <div id = top>
           
            Small Quizzes
             
             <a href = profile.php><i id = user class = 'fas fa-user-circle' style = 'font-size:50px;color:white'></i></a>
             <?php echo  $user_check;?>
             <a href=logout.php><button id = logout >Logout</button></a>
         </div>
         <div id = name>
             C language
        </div>
        
        <div id = levels>
            <p id = dis>Levels</p>
            <a href = Cbasic.php><button>Basic</button></a>
            <a href = Cinter.php><button> Intermediate</button></a>
            <a href = Cadv.php><button>Adavanced</button></a>
   </div>
    </body>
</html>