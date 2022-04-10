<?php
	$firstname = $_POST['Firstname'];
	$lastname = $_POST['Lastname'];
	$email = $_POST['email'];
	$password = $_POST['password'];

	// Database connection
	$conn = new mysqli('localhost','root','','register');
	if($conn->connect_error){
		echo "$conn->connect_error";
		die("Connection Failed : ". $conn->connect_error);
	} 
	
	else {

			$email = stripcslashes($email);  
			$email = mysqli_real_escape_string($conn, $email);  
		    $sql = "select * from users where email = '$email'";  
			$result = mysqli_query($conn, $sql);  
			$row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
			$count = mysqli_num_rows($result);  
			  
		if($count == 1){  
				header("Location:RegistrationPage.html");
		}
		else{
		$stm = $conn->prepare("insert into users(fname, lname, email, password) values(?, ?, ?, ?)");
		$stm->bind_param("ssss", $firstname, $lastname, $email, $password);
		$stm->execute();
	
		echo "Registration successfully...";
        header('location:loginform1.html');
		$stm->close();
		$conn->close();
	}
}
?>