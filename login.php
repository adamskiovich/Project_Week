<?php 
// 1) Start Session and Require Connection
session_start();
require_once("connection.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width = device-width, initial-scale =1">	
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/anguar.min.js"></script>
<title>	Portfolio Website</title>

<style>
.navbar li{
	display: inline
	margin-left: 100px;
}

body{
	background: #eee;
}

#main_container, #main_container2{
	background: white;
}
input {
    float:right;
    clear:both;
    margin-bottom: 10px;
}

form p{
	display: inline;
}

p{
	margin-bottom: 10px;
}

</style>


</head>
<body>

<!-- Navigatie -->
<nav class="navbar navbar-default" class="navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand" style="padding-top: 0px;" href="index.php"><img alt="Brand" src="logo.png" style="width:80px;height:50px"></a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="index.php">Home</a></li>
      <li><a href="portfolio.php">Portfolio</a></li>
      <li><a href="projects.php">Projects</a></li>
      <li><a href="selfie_request.php">Selfie Request</a></li>
      <li><a href="art_request.php">Art Request</a></li>
      <li><a href="about.php">About</a></li>
      <li class="active"><a href="login.php">Login</a></li>
    </ul>
  </div>
</nav>


<div class="container">
 <div class="row">
      <div id="main_container" style="width:400px;height:160px">
        <h1> Login </h1>
        <form action="process.php" method="post" id="form">
         <p> E-mail: </p>  <input type="text" name="email"> <br>
          <br> <p> Password: </p> <input type="password" name="pass"> <br>
         <input type="submit" value="submit">
         <input type="hidden" value="login" name="login">
         </form>
      </div>
 </div>

  <div class="row">
      <div id="main_container2" style="width:400px;height:280px">
        <h1> Register </h1>
        <form action="process.php" method="post" id="form">
         <p> First name:</p> <input type="text" name="first_name"><br>
          <br> <p> Last name: </p> <input type="text" name="last_name"><br>
          <br> <p> Email: </p> <input type="text" name="email"><br>
          <br> <p> Password: </p> <input type="password" name="pass"><br>
          <br> <p> Confirm Password: </p> <input type="password" name="confirm_pass"><br>
         <input type="submit" value="submit">
         <input type="hidden" value="register" name="register">
         </form>
      </div>
 </div>
</div>



</body>
</html>