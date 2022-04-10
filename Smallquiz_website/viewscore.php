<html>
<?php 
require 'connection.php';
include 'session.php';?>
    <head>
        <title>Small quizz website</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link href = styleview.css rel = 'stylesheet'>
    </head>
    <body>
        <div id = top>
           
           Small Quizzes
            
            <a href = welcome.php><button id = home >Home</button></a>
            <a href=logout.php><button id = logout >Logout</button></a>
        </div>


<div id = scores>
        <?php
        $sql = "select * from scores where email = '$user_check'"; ?>

<table width=50%>
            <tr>
                <th>QuizName</th>
                <th>Total No.of questions</th>
                <th>Score</th>
    </tr>

<?php
if ($result = mysqli_query($con, $sql)) {
    while ($row = $result->fetch_assoc()) {
        $field1name = $row["quizname"];
        $field2name = $row["score"];
        $field3name = $row['tq'];
		?>
        
    <tr>
        <td id = name><?php echo $field1name;?></td>
        <td><?php echo $field3name;?></td>
        <td><?php echo $field2name;?></td>
    </tr>
    <?php
}
    $result->free();
}?>
</div>
</body>
</html>       














.