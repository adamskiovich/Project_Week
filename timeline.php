<?php session_start();
require_once('connection.php');

if(isset($_SESSION['errors'])){
	foreach($_SESSION['errors'] as $error){
		echo "<p>".$error."</p>";
	}
	unset($_SESSION['errors']);
	$_SESSION['errors']=array();
}

?>

<?php
function fetch($query)
{
	global $connection;

	$result = mysqli_query($connection, $query);
	$rows = array();

	foreach($result as $row) {
		$rows[] = $row;
	}

	return $rows;
}
?>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width = device-width, initial-scale =1"> 
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstra[/3.3.5/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.9/anguar.min.js"></script>
	<title>Timeline!</title>
</head>
<body>

<h2> Timeline <h2>
<h3> Welcome <?php echo $_SESSION['first_name'] ?> </h3>

	<div>
  	   <a href="logout.php">Log Out</a>
	</div>

<br>
<h1> Make a post! </h1>
<div id="create_post">
	<form action="process.php" method="post" id="form">
		<textarea name="message_post" id="messagepostid"></textarea>
		<input type="hidden" name="create_post" value="create_post">
		<input type="submit" name="submit" value="submit">
	</form>

<h2> Here are the previous posts! </h2>
<?php
  $query="SELECT first_name, message, messages.created_at, messages.id FROM test1234.messages left join test1234.users on messages.user_id = users.id ORDER BY created_at DESC";
  $results=fetch($query);
   foreach($results as $row){
   	echo "<p> this is the message: " . $row['message'] . "<p>";
   	echo "<p> it is written by: " . $row['first_name'] . "<p>";
   	echo "<p> it was created at: " . $row['created_at'] . "<p>";
   	echo "<p>_____________________<p>";
    $query2="SELECT users.first_name, comments.comment, comments.created_at FROM test1234.users left join test1234.comments on users.id = comments.user_id where comments.message_id = {$row['id']} ORDER BY created_at DESC"; ?>
            <h1>Add a new comment</h3>
    <div id="create_comment">
      <form action="process.php" method="post" enctype='multipart/form-data'>
        <input type="hidden" name="comment" value="comment">
        <input type="hidden" name="commentpost" value="<?php echo $row['id']; ?>"> 
        <textarea name="comment_post"></textarea>
        <input type="submit" name="commentinput" value="comment" id="update">
      </form>
    <div>
    <?php
    $results2=fetch($query2);
    foreach($results2 as $row2){ 
    echo	"<p>" . $row2['first_name'] ." at ". $row2['created_at'];
    echo	"<p>" . $row2['comment'];
    echo  "<p> |||||||||||||||||||||||||||||||||||||||||||||||";
    ?>

    <?php
}
   }
?>



  </body>
</html>