<?php 
include 'connection.php';
include 'session2.php';
$id = $_GET['id'];
$res = mysqli_query($con,"select * from $_SESSION[tname] where id = $id");
while($row=mysqli_fetch_array($res)){
    $question = $row['que'];
    $option1 = $row['option1'];
    $option2 = $row['option2'];
    $option3 = $row['option3'];
    $option4 = $row['option4'];
    $answer = $row['ans'];
}

?>
<html>
    <head>
        <link href = styleedit.css rel='stylesheet'>
</head>
    <body>
    <div id = top>
           
           Small Quizzes
           <a id = hom href = welcomeadmin.php><button id = home>Home</button>
            <a href=logoutadmin.php><button id = logout >Logout</button></a>
        </div>
    <div id = question >
    <p>Question : <?php echo $question ?></p>
    <p>option1 : <?php echo $option1 ?></p>
    <p>option2 : <?php echo $option2 ?></p>
    <p>option3 : <?php echo $option3 ?></p>
    <p>option4 : <?php echo $option4 ?></p>
    <p>answer : <?php echo $answer ?></p>
    </div>
        <div id = edit>
            <p id = up >Update Question</p>
            <form action = " " method = "POST">
                <div>
                    <label>Update Question</label>
                    <input type = 'text' name = question placeholder="Update question" >
                </div>
                <div>
                    <label>Update option1</label>
                    <input type = 'text' name = option1 placeholder="Update option1"  >
                </div>
                <div>
                    <label>Update option2</label>
                    <input type = 'text' name = option2 placeholder="Update option2"  >
                </div>
                <div>
                    <label>Update option3</label>
                    <input type = 'text' name = option3 placeholder="Update option3"  >
                </div>
                <div>
                    <label>Update option4</label>
                    <input type = 'text' name = option4 placeholder="Update option4" >
                </div>
                <div>
                    <label>Update Answer</label>
                    <input type = 'text' name = answer placeholder="Update answer" >
                </div>
                <div>
                    <input id = updat type = 'submit' name = submit value = 'Update'>
                </div>
</form>
</div>

<?php 
if(isset($_POST['submit'])){
    $tablename = $_SESSION['tname'];
    $question1 = $_POST['question'];
    $option1 = $_POST['option1'];
    $option2 = $_POST['option2'];
    $option3 = $_POST['option3'];
    $option4 = $_POST['option4'];
    $answer = $_POST['answer'];
    mysqli_query($con,"update $tablename set que = '$question1'  where id = $id");
    mysqli_query($con,"update $tablename set option1 = '$option1'  where id = $id");
    mysqli_query($con,"update $tablename set option2 = '$option2'  where id = $id");
    mysqli_query($con,"update $tablename set option3 = '$option3'  where id = $id");
    mysqli_query($con,"update $tablename set option4 = '$option4'  where id = $id");
    mysqli_query($con,"update $tablename set ans = '$answer'  where id = $id");

?>
<script type = 'text/javascript'>
alert("Updated successfully");
window.location = "action.php";
</script>
<?php
}
?>
</body>
</html>