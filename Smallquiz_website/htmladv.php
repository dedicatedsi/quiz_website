<!DOCTYPE>
<html>
<?php require 'connection.php';
include 'session1.php';?>
<head>
<title>HTML Advanced level</title>
<link href = stylequiz.css rel = 'stylesheet'>
</head>
<body><center>
<?php 															
																if (isset($_POST['click']) || isset($_GET['start'])) {
																@$_SESSION['clicks'] += 1 ;
																$c = $_SESSION['clicks'];
																if(isset($_POST['userans'])) { $userselected = $_POST['userans'];
																
																$fetchqry2 = "UPDATE `htmladquiz` SET `userans`='$userselected' WHERE `id`=$c-1"; 
																$result2 = mysqli_query($con,$fetchqry2);
																}
		  
																	
 																} else {
																	$_SESSION['clicks'] = 0;
																}
																
																//echo($_SESSION['clicks']);
																?>
<div class="bump"><br><form><?php if($_SESSION['clicks']==0){ ?> <button id = start class="button" name="start" float="left"><span>START QUIZ</span></button> <?php } ?></form></div>
<form action="" method="post">  				
<table><?php if(isset($c)) {   $fetchqry = "SELECT * FROM `htmladquiz` where id='$c'"; 
				$result=mysqli_query($con,$fetchqry);
				$num=mysqli_num_rows($result);
				$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
				$fetchqry2 = "SELECT * FROM `htmladquiz`"; 
                $result2=mysqli_query($con,$fetchqry2);
                $num2=mysqli_num_rows($result2);
			    $num2 = $num2+1;}
		  ?>
<tr><td><h3><br><?php echo @$row['que'];?></h3></td></tr> <?php if($_SESSION['clicks'] > 0 && $_SESSION['clicks'] < $num2){ ?>
  <tr><td><input required type="radio" name="userans" value="<?php echo $row['option1'];?>">&nbsp;<?php echo $row['option1']; ?><br>
  <tr><td><input required type="radio" name="userans" value="<?php echo $row['option2'];?>">&nbsp;<?php echo $row['option2'];?></td></tr>
  <tr><td><input required type="radio" name="userans" value="<?php echo $row['option3'];?>">&nbsp;<?php echo $row['option3']; ?></td></tr>
  <tr><td><input required type="radio" name="userans" value="<?php echo $row['option4'];?>">&nbsp;<?php echo $row['option4']; ?><br><br><br></td></tr>
  <tr><td><button class="button3" name="click" >Next</button></td></tr> <?php }  
																	?> 
<form>
 <?php 
 $fetchqry1 = "SELECT * FROM `htmladquiz`"; 
$result1=mysqli_query($con,$fetchqry1);
$num1=mysqli_num_rows($result1);
    
    if($_SESSION['clicks']>$num1){ 
	$qry3 = "SELECT `ans`, `userans` FROM `htmladquiz`";
	$result3 = mysqli_query($con,$qry3);
	$storeArray = Array();
	@$_SESSION['score'] = 0;
	while ($row3 = mysqli_fetch_array($result3, MYSQLI_ASSOC)) {
     if($row3['ans']==$row3['userans']){
		 @$_SESSION['score'] += 1 ;
	 }
}
 
 ?> 
 
 
 <h2>Result</h2>
 <p>Total No.of questions:<?php echo $num1;?></p>
 <p><span>No. of Correct Answer:&nbsp;
 <?php echo $no = @$_SESSION['score'];?></p>
 <?php 
 $qname = 'HTML advanced level';
 $conn = new mysqli('localhost','root','','register');
 $stm = $conn->prepare("insert into scores(email, score, quizname,tq) values(?,?,?,?)");
 $stm->bind_param("sisi", $user_check,$no,$qname,$num1);
 $stm->execute();
 $stm->close();
 $conn->close(); ?></span><br>
 <p><span>Your Score:&nbsp<?php echo $no; ?></span></p>
<?php } ?>

<?php
$bool = 1;
 if($bool == 1){
echo "<a  id = home href = 'welcome.php'>'Home'</a>";}?>
 <!-- <script type="text/javascript">
    function radioValidation(){
		/* var useransj = document.getElementById('rd').value;
        //document.cookie = "username = " + userans;
		alert(useransj); */
		var uans = document.getElementsByName('userans');
		var tok;
		for(var i = 0; i < uans.length; i++){
			if(uans[i].checked){
				tok = uans[i].value;
				alert(tok);
			}
		}
    }
</script> -->
</center>
</body>
</html>