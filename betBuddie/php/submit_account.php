<?php
	include("global_vars.php");	
    $db = new PDO($DB_CONNECT, $DB_U, $DB_P);
	
    // create the random salt for the user
	$salt = rand(111111, 999999);

	// create the sha1 hash from the username and salt
	$hash = sha1($_POST['password'] . "_" . $salt );

	$test_query = $db->prepare("
		INSERT INTO Users
			(`username`, `salt`, `hash`)
		VALUES
			(:username, :salt, :hash);
	");

	$secure_params = array( 
		':username' => $_POST['username'],
		':salt' => $salt,
		':hash' => $hash
	);
	$suc = $test_query->execute($secure_params);
	$results = $test_query->fetchAll();

	if ($suc) {
		session_name("rtip");
		session_start();
		$_SESSION['username'] = $_POST['username'];
		header("Location: ../index.php?create=y");
	} else {
		header("Location: ../create_account.php?create=n");
	}

?>
