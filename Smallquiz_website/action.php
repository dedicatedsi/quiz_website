<?php
include 'session2.php';
include 'connection.php';
?>
<html>
    <head>
        <link href = styleaction.css rel = 'stylesheet'>
    <body>
    <div id = top>
           
           Small Quizzes
           <a id = hom href = welcomeadmin.php><button id = home>Home</button>
            <a href=logoutadmin.php><button id = logout >Logout</button></a>
        </div>
   
<div>
    
<table>
<tr>
<th>ID</th>
<th>Question</th>
<th>Option1</th>
<th>Option2</th>
<th>Option3</th>
<th>Option4</th>
<th>Answer</th>
<th>Edit</th>
<th>Delete</th>
</tr>
<?php
$result = mysqli_query($con,"select * from $_SESSION[tname] order by id asc");
while($row1=mysqli_fetch_array($result)){
    echo "<tr>";
    echo "<td>"; echo $row1['id']; echo "</td>";
    echo "<td>"; echo $row1["que"]; echo "</td>";
    echo "<td>"; echo $row1["option1"]; echo "</td>";
    echo "<td>"; echo $row1["option2"]; echo "</td>";
    echo "<td>"; echo $row1["option3"]; echo "</td>";
    echo "<td>"; echo $row1["option4"]; echo "</td>";
    echo "<td>"; echo $row1["ans"]; echo "</td>";
    echo "<td>";?>
    <a href = "editquiz.php?id=<?php echo $row1['id']; ?>" ><button id = edit>Edit</button></a>
    <?php  echo "</td>";
    echo "<td>";
    ?>
    <a href = "deletequiz.php?id=<?php echo $row1['id']; ?>"><button id = delete>Delete</button></a>
    <?php echo "</td>";
    echo "</tr>";
}
?>
</table>
</div>
<div id = for>
<p id = name >Add question into the Quiz</p>
            <form action = " " method = "POST">

            <div>
                    <label>Add QuesId   </label>
                    <input type = 'text' name = id placeholder="Add QuestionId">
                </div>
                <div>
                    <label>Add Question</label>
                    <input type = 'text' name = question placeholder="Add Question">
                </div>
                <div>
                    <label>Add option1</label>
                    <input type = 'text' name = option1 placeholder="Add option1">
                </div>
                <div>
                    <label>Add option2</label>
                    <input type = 'text' name = option2 placeholder="Add option2">
                </div>
                <div>
                    <label>Add option3</label>
                    <input type = 'text' name = option3 placeholder="Add option3">
                </div>
                <div>
                    <label>Add option4</label>
                    <input type = 'text' name = option4 placeholder="Add option4">
                </div>
                <div>
                    <label>Add Answer</label>
                    <input type = 'text' name = answer placeholder="Add answer">
                </div>
                <div>
                    <input id = add type = 'submit' name = submit value = 'AddQuestion'>
                </div>
</form>
</div>
<?php 
if(isset($_POST['submit'])){
    $id = $_POST['id'];
    $question = $_POST['question'];
    $option1 = $_POST['option1'];
    $option2 = $_POST['option2'];
    $option3 = $_POST['option3'];
    $option4 = $_POST['option4'];
    $answer = $_POST['answer'];
    $userans = " ";
    $tablename = $_SESSION['tname'];
    $conn = new mysqli('localhost','root','','register');
    $stm = $conn->prepare("insert into $tablename values(?,?,?,?,?,?,?,?)");
    $stm->bind_param("sssssssi",$question,$option1,$option2,$option3,$option4,$answer,$userans,$id);
    $stm->execute();
    $stm->close();
    $conn->close();
?>
<script type = 'text/javascript'>
alert("question added successfully");
window.location.href = window.location.href;
</script>
<?php
}
?>



</body>
</html>