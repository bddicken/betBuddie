<?php
	include("../global.php");	

	// get user money
	$test_query = $db->prepare("
		UPDATE Users
		SET Level = :level
		WHERE username = :user"
	);
	$suc = $test_query->execute( array( ':level' => $_GET['lev'], ':user' => $_SESSION['username']) );
	$results = $test_query->fetchAll();
    
	$money = $results[0][0];
	$level = $results[0][1];

	if((($money)-($_GET['amount'])) >= 0)
		echo "good";
	else
		echo "bad";
?>

