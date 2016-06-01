<?php 
// 1) Start Session and Require Connection
session_start();
require_once("connection.php");
//Start your Data Validation
//Notice how we keep the code clean by using functions within our condition statements 
if(isset($_POST['register']) && $_POST['register']=='register')
	{
		register_user($_POST);
	}
elseif(isset($_POST['login']) && $_POST['login']=='login')
	{
		login_user($_POST);
	}

elseif(isset($_POST['create_post']) && $_POST['create_post']=='create_post'){
	create_post($_POST);
}

elseif(isset($_POST['comment']) && $_POST['comment']=='comment'){
	create_comment($_POST);
}
//If the user accesses process.php without sending a form, destroy the session and send him back to index.php
else{
	session_destroy();
	header('Location: index.php');
}
// Here we declared the functions
// Christmas gift: here's some functions you can use to validate the information for the Back End Challenge 
// NEVER copy paste, understand what each statement does 
function register_user($post)
	{
	    //Declare a 'errors' array within $_SESSION to keep hold of errors, if any.
	$_SESSION['errors']=array();
	    // Validation conditions start 
	if(strlen($post['first_name'])<1)
	{
		$_SESSION['errors'][]="Please insert your first name properly.";
	}
	if(strlen($post['last_name'])<1)
	{
		$_SESSION['errors'][]="Please insert your last name properly.";
	}
	if(strlen($post['pass'])<6)
	{
		$_SESSION['errors'][]="Your password has to be at least 6 characters.";
	}
	//Notice below how we use != for NOT EQUAL
	if($post['pass']!=$post['confirm_pass'])
	{
		$_SESSION['errors'][]="Your passwords are going through an identity crisis. They do not match.";
	}
	if(!filter_var($post['email'],FILTER_VALIDATE_EMAIL)){
		$_SESSION['errors'][]="Your e-mail doesn't look right.";
	}
	if(count($_SESSION['errors'])!=0)
	{
		header('Location: index.php');
	}
	//IF all the conditionals above evaluate as FALSE - we have no errors, then execute ELSE {}
	else{
	    //This is just a SQL command we want to run in our database. 
		$query="INSERT INTO users (first_name,last_name,email,created_at,updated_at,password) 
		VALUES ('{$_POST['first_name']}','{$_POST['last_name']}','{$_POST['email']}', NOW(),NOW(),'{$_POST['pass']}')";
        //Here we send the SQL command stored in variable $query to our database through the function we built for you 
		run_mysql_query($query);
		$_SESSION['errors'][]="Yuhu, you're registered. Please login below.";
		header('Location: index.php');
	}
	die();

	}
// Login our users 
// If there is a user with the same id and password in my database that match what was inserted in the $_POST, then log the user in. 
function login_user($post)
	{
	$query="SELECT * FROM users WHERE users.password='{$_POST['pass']}'
			AND users.email='{$_POST['email']}'";
		
	$user=fetch($query);
	//Notice below how we save information about our user in the $_SESSION like his first_name or id and 'logged_in' status.
	//These are just values we, as developers, decided to save in order to enhance our application. For instance, only if the user $_SESSION['logged_in'] == TRUE we want to allow the user to view timeline.php otherwise send him back to index.php 
	if(count($user)>0)
	{
		$_SESSION['user_id']=$user[0]['id'];
		$_SESSION['first_name']=$user[0]['first_name'];
		$_SESSION['logged_in']= TRUE;
		header('Location: timeline.php');
	}
	else{
		$_SESSION['login_errors']=array();
		$_SESSION['login_errors'][]="E-Mail or Password Incorrect. Please log in again.";
		header('Location: index.php');
	}	
	}


function create_post($post)
{
		if(strlen($post['message_post'])<10)
	{
			unset($_SESSION['errors']);
			$_SESSION['errors']=array();
		$_SESSION['errors'][]="Please insert a bigger post.";
		header('Location: timeline.php');
	}

	else
		{
		$query="INSERT INTO messages (user_id, message, created_at, updated_at, users_id)
        VALUES('{$_SESSION['user_id']}','{$_POST['message_post']}', NOW(), NOW(), '{$_SESSION['user_id']}')";
		run_mysql_query($query);
		$_SESSION['errors'][]="Yuhu, you've posted. Please see it below.";
		header('Location: timeline.php');
	}
}

function create_comment($post)
{

		if(strlen($post['comment_post'])<10)
	{

		$_SESSION['errors'][]="Please insert a bigger comment.";
		header('Location: timeline.php');
	}
	else {
		$query="INSERT INTO comments (message_id, user_id, comment, created_at, updated_at, messages_id, users_id)
        VALUES('{$_POST['commentpost']}','{$_SESSION['user_id']}','{$_POST['comment_post']}', NOW(), NOW(), '{$_POST['commentpost']}','{$_SESSION['user_id']}')";
		run_mysql_query($query);
		$_SESSION['errors'][]="Yuhu, you've commented. Please see it below.";
		header('Location: timeline.php');
	}
}

////////////////////////////////////////
function fetch_all($query)
{
  $data = array();
  global $connection;
  $result = $connection->query($query);
  while($row = mysqli_fetch_assoc($result))
  {
    $data[] = $row;
  }
  return $data;
}
//SELECT - used when expecting a single result
//returns an associative array
function fetch_record($query)
{
  global $connection;
  $result = $connection->query($query);
  return mysqli_fetch_assoc($result);
}
//used to run INSERT/DELETE/UPDATE, queries that don't return a value
//returns a value, the id of the most recently inserted record in your database
function run_mysql_query($query)
{
  global $connection;
  $result = $connection->query($query);
  return $connection->insert_id;
}
//returns an escaped string. EG, the string "That's crazy!" will be returned as "That\'s crazy!"
//also helps secure your database against SQL injection
function escape_this_string($string)
{
  global $connection;
  return $connection->real_escape_string($string);
}

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


