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
      <li class="active"><a href="art_request.php">Art Request</a></li>
      <li><a href="about.php">About</a></li>
      <li><a href="login.php">Login</a></li>
    </ul>
  </div>
</nav>

</body>
</html>