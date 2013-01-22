<div class="title2">Select Level:</div>

<CENTER> <div id="paragraph1" >(Greyed out buttons are levels you have not reached yet)</div> </CENTER>

<?php
	include("../global.php");

	// Fetch the number of the highest level that the user has reached.
	$level_query = $db->prepare("SELECT Level FROM Users WHERE username = '" . $_SESSION['username'] . "';" );
	$suc = $level_query->execute();
	$results = $level_query->fetchAll();

        $return_table = '<div class="mainButtons">';

	// A loop to print the level buttons
	$lev = 1;
	while($lev <= 5) {
		if($results[0]['Level'] >= $lev) {
			$return_table = $return_table . '<a href="#" onclick="enterPage(\'goToPage(\\\''. $lev .'-play-mainCard.php\\\');\');"><div style="background:#FFFFFF" class="button2">' . $lev . '</div></a>';
		} else {
			$return_table = $return_table . '<a href="#"><div style="background:#b5b5b5" class="button2">' . $lev . '</div></a>';
		}
		$lev++;
	}
	$return_table = $return_table . '</div>';
	echo $return_table;
?>

