<html>
<?php 
require 'connection.php';
include 'session1.php';?>
    <head>
        <title>Small quizz website</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link href = styleuser.css rel = 'stylesheet'>
    </head>
    <body>
        <div id = top>
           
           Small Quizzes
           <a href = welcomeadmin1.php><button id = home >Home</button></a>
            
            <a href=logoutadmin.php><button id = logout >Logout</button></a>
        </div>
        <div>
            <p id = cat>User Information</P>
        <table style="width:50%">
  <tr>
    <th>UserId</th>
    <th>UserMailId</th>
    <th>Firstname</th>
    <th>Lastname</th>
  </tr>
      <?php 
      $c = 1;
       $sql = "select * from users";  
       $result = mysqli_query($con, $sql);  
       $row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
       $count = mysqli_num_rows($result);  
       if($count!=0){
           while($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
               echo "<tr>";
               echo "<td>"; echo $c; echo "</td>";
               echo "<td>"; echo $row['email']; echo "</td>";
               echo "<td>"; echo $row['fname']; echo "</td>";
               echo "<td>"; echo $row['lname']; echo "</td>";
               $c = $c + 1;
               echo "</tr>";

               
           }
       }
       ?>
       </table>
    </div>
       </body>
       </html>