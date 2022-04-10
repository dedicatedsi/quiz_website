
<html>
<?php 
require 'connection.php';
include 'session.php';?>
    <head>
        <title>Small quizz website</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link href = stylewelcome1.css rel = 'stylesheet'>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    </head>
    <body>
        <div id = top>
           
           Small Quizzes
            
            <a href = profile.php><i id = user class = 'fas fa-user-circle' style = 'font-size:50px;color:white'></i></a>
            <?php echo  $user_check;?>
            <a href=logout.php><button id = logout >Logout</button></a>
        </div>
        <div id = welcome>
            <p>Welcome!  <?php
            echo $user_fname," ",$user_lname;
            ?> </P>
        </div>
        <div id = quiz>
        <p>
                <a href = Cindex.php><button id = c>  C </button></a>
                <a href = cppindex.php><button>  C++ </button></a>
                <a href = Pythonindex.php><button>  Python </button></a>
        </p>
        <p>
                <a href = javaindex.php><button>  Java </button></a>
                <a href = cssindex.php><button>  CSS </button></a>
                <a href ="htmlindex.php"><button>  HTML </button></a>
        </p>
        </div>
    </body>
</html>