<?php      
    include('connection.php');  
    session_start();
    $useremail = $_POST['email'];  
    $password = $_POST['pass'];  
      
        //to prevent from mysqli injection  
        $useremail = stripcslashes($useremail);  
        $password = stripcslashes($password);  
        $useremail = mysqli_real_escape_string($con, $useremail);  
        $password = mysqli_real_escape_string($con, $password);  
      
        $sql = "select * from admindetails where email = '$useremail' and password = '$password'";  
        $result = mysqli_query($con, $sql);  
        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
        $count = mysqli_num_rows($result);  
          
        if($count == 1){  
        
           $_SESSION['login_user'] = $useremail;
           $_SESSION['success'] = "You have logged in";
           header("location: welcomeadmin1.php");
        }  
        else{  
            echo "<h1> Login failed. Invalid username or password.</h1>";  
        }     
?>  