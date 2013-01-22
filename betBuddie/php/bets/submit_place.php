<?php
	/*
	 * This script submits a win bet.
	 * 
	 * This does some error checking!!!
	 */

	include("../../global.php");
	require_once("bet_functions.php");

	$dbFunctions = new BetDBCaller($DB_CONNECT, $DB_U, $DB_P);

	// open the database connection
    $db = new PDO($DB_CONNECT, $DB_U, $DB_P);

        // get the users's money
	$results = $dbFunctions->getUserMoney($_SESSION['username']);

        // get the bet info
	$bet_query2 = $db->prepare("
		SELECT winPayoff, placePayoff FROM RaceInstance WHERE RaceID = :rid AND HorseNumber = :hid");
	$secure_params2 = array( ':rid' => $_GET['raceID'], ':hid' => $_GET['horseID'] );
	$suc2 = $bet_query2->execute($secure_params2);
	$results2 = $bet_query2->fetchAll();

	$rText = "";

	// calculate earnings or losses
	$new_value = "";
        
	if($results2[0]['winPayoff'] > 0) 
	{
	    $p = $_GET['amount']*(($results2[0]['winPayoff'])/2);
	    $new_value = $results[0][0] + $p;
	    $rText = "Congratulations, you placed a good bet. You won the win bet! <div class=\"winner\"></br>You Earned $" . number_format($p, 2) . "!!!</div>";
        } 
	else if($results2[0]['placePayoff'] > 0) 
	{
	    $p = $_GET['amount']*(($results2[0]['placePayoff'])/2);
	    $new_value = $results[0][0] + $p; 
	    $rText =" Congratulations, you placed a good bet.  You won the place bet!  <div class=\"winner\"><br />You Earned $" . number_format($p, 2) . "!!!</div>";
	} 
	else 
	{
	    $new_value = $results[0][0] - $_GET['amount'];
	    $rText = "Uh Oh, it looks like you placed a poor bet!  <div class=\"lost\"></br>You lost $" .  number_format( ($_GET['amount']), 2) . 
	    "!</div>  Next time, make sure to closely examine the stat cards to make sure you pick the best possible horse! ";
	}

	// update the database with earnings or losses
	$bet_query3 = $db->prepare("
		UPDATE Users 
		SET Money = :newMoney
		WHERE username = :usr
	");

	$secure_params = array( ':newMoney' => $new_value, ':usr' => $_SESSION['username'] );
	$suc = $bet_query3->execute($secure_params);
	$results = $bet_query3->fetchAll();

	$resultsReturn = array( 
		"money" => number_format($new_value, 2),
		"text" => $rText
	);

	echo json_encode($resultsReturn);
?>


