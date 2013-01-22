<?php
	include("../global.php");	

	// get user money
	$test_query = $db->prepare("SELECT Money, Level FROM Users WHERE username = :user");
	$suc = $test_query->execute( array(':user' => $_SESSION['username']) );
	$results = $test_query->fetchAll();
    
	$money = $results[0][0];
	$level = $results[0][1];

	// If the string that represents the amount being is a valid amount
	// and is numeric, return good.
	if( ((($money)-($_GET['amount'])) >= 0) && is_numeric($_GET['amount'] ) )
		echo "good";
	else
		echo "bad";
?>

