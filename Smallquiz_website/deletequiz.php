<?php
include 'connection.php';
include 'session2.php';
$id = $_GET['id'];
$tablename = $_SESSION['tname'];
$sql = "select * from $tablename order by id asc";  
$result = mysqli_query($con, $sql);  
$row = mysqli_fetch_array($result);  
$count = mysqli_num_rows($result);  
if($count!=0){
    $loop = 0;
    while($row = mysqli_fetch_array($result)){
        if($row['id']==$id){
        mysqli_query($con,"delete from $tablename where id = $id");
        }
        else{
        $loop = $loop+1;
        mysqli_query($con,"update $tablename set id = $loop where id = $row[id]");
        }
   }
   $bool=1;
   $loop = $loop + 1;
   mysqli_query($con,"update $tablename set id = $loop where id = $count");
   if($bool==1){
    ?>
<script type = 'text/javascript'>
alert("deleted succesfully");
window.location = "action.php";
</script>
<?php } ?>
<?php }?>
