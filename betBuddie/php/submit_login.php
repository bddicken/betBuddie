<?php

/*
 * This script logs a user into the site after submitting their password.
 */
 
include("global_vars.php");	
$db = new PDO($DB_CONNECT, $DB_U, $DB_P);

$test_query = $db->prepare("SELECT * FROM Users WHERE username = :uname");
$secure_params = array( ':uname' => $_POST['username']);
$suc = $test_query->execute($secure_params);
$results = $test_query->fetchAll();

$salt = $results[0][1];
$hash =sha1($_POST['password'] .  "_" . $salt);

$login_for_db_query = $db->prepare("
	SELECT * FROM Users
	WHERE
		username = :username
	AND
		hash = :pass;
");

$secure_params = array(
	':username' => $_POST['username'],
	':pass' => $hash
);

$loginRes = $login_for_db_query->execute($secure_params);
$results = $login_for_db_query->fetch();

if (!(empty($results))) {
	session_name("rtip");
	session_start();
	$_SESSION['username'] = $_POST['username'];
	header("Location: ../index.php?user=".$_POST['username']);
} else {
	header("Location: ../login.php?f=failed");
}

?>
