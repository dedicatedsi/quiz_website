<?php
   include('connection.php');
   session_start();
   
   $user_check = $_SESSION['login_user'];
   
   
   $ses_sql = mysqli_query($con,"select email,fname,lname from users where email = '$user_check' ");
   
   $row = mysqli_fetch_array($ses_sql,MYSQLI_ASSOC);
   $user_fname = $row['fname'];
   $user_lname = $row['lname'];
   
   $login_session = $row['email'];
   
   if(!isset($_SESSION['login_user'])){
      header("location:loginform.html");
      die();
   }
?>