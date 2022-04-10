<html>
<?php 
require 'connection.php';
include 'session1.php';?>
    <head>
        <title>Small quizz website</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link href = styleadmin1.css rel= 'stylesheet'>
    </head>
    <body>
        <div id = top>
           
           Small Quizzes
           <a href = welcomeadmin1.php><button id = home >Home</button></a>
            
            <a href=logoutadmin.php><button id = logout >Logout</button></a>
        </div>
        <div>
            <p id = cat>Quiz Categories</P>
        <table style="width:50%">
  <tr>
    <th>QuizName</th>
    <th>Levels</th>
    <th>TableName</th>
  </tr>
  <tr>
    <td>C Language </td>
    <td>Basic</td>
    <td>cquiz</td>
  </tr>
  <tr>
    <td>C Language</td>
    <td>Intermediate</td>
    <td>cinterquiz</td>
  </tr>
<tr>
    <td>C Language</td>
    <td>Advanced</td>
    <td>cadvquiz</td>
</tr>
<tr>
    <td>Java</td>
    <td>Basic</td>
    <td>javaquiz</td>
</tr>
<tr>
    <td>Java</td>
    <td>Intermediate</td>
    <td>javaiquiz</td>
</tr>
<tr>
    <td>Java</td>
    <td>Advanced</td>
    <td>javaadvquiz</td>
</tr>
<tr>
    <td>Python</td>
    <td>Basic</td>
    <td>pythonquiz</td>
</tr>
<tr>
    <td>python</td>
    <td>Intermediate</td>
    <td>pythoniquiz</td>
</tr>
<tr>
    <td>python</td>
    <td>Advanced</td>
    <td>pythonadvquiz</td>
</tr>
<tr>
    <td>Css</td>
    <td>Basic</td>
    <td>cssquiz</td>
</tr>
<tr>
    <td>Css</td>
    <td>Intermediate</td>
    <td>cssiquiz</td>
</tr>
<tr>
    <td>Css</td>
    <td>Advanced</td>
    <td>cssadvquiz</td>
</tr>
<tr>
    <td>HTML</td>
    <td>Basic</td>
    <td>htmlquiz</td>
</tr>
<tr>
    <td>HTML</td>
    <td>Intermediate</td>
    <td>htmliquiz</td>
</tr>
<tr>
    <td>HTML</td>
    <td>Advanced</td>
    <td>htmladvquiz</td>
</tr>
</table>
</div>
<div id = details>
<p id = info>Add Quiz details to make modifications</p>
<form action="action1.php" method="POST">
  <table id = det>
   <tr>
    <td>Quiz Name :</td>
    <td><input type="text" name="QuizName" required></td>
   </tr>
   <tr>
    <td>Level :</td>
    <td><input type="text" name="Level" required></td>
   </tr>
   <tr>
    <td>Table Namel :</td>
    <td><input type="text" name="TableName" required></td>
   </tr> 
<tr>
    <td><input id = sub type="submit" value="Submit" name="submit"></td>
   </tr>
  </table>
 </form>

    </body>
</html>