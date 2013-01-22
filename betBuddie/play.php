<?php
	include("global.php");	

	$test_query = $db->prepare("SELECT Money, Level FROM Users WHERE username = :user");
	$suc = $test_query->execute( array(':user' => $_SESSION['username']) );
	$results = $test_query->fetchAll();

	$money = $results[0][0];
	$level = $results[0][1];
?>

<!DOCTYPE html>

<html>

<head>
	<!-- GAME TITLE -->
	<title>BetBuddie</title>

        <!-- INCLUDE JQUERY -->
	<script type="text/javascript" src="library/jquery-1.8.2.min.js"></script>
	
	<!-- GOOGLE WEB FONTS -->
	<link href='http://fonts.googleapis.com/css?family=Short+Stack' rel='stylesheet' type='text/css'>

        <!-- INCLUDE JS -->
        <script type="text/javascript" src="js/index.js"></script>
        <script type="text/javascript" src="js/pop_ups.js"></script>
        <script type="text/javascript" src="js/hist.js"></script>
	
	<link rel="styleSheet" href="css/universal.css" type="text/css"/>
	<link rel="styleSheet" href="css/pop.css" type="text/css"/>
	<link rel="styleSheet" href="css/music.css" type="text/css"/>

</head>

<body>

<div class="containerDiv1" >

<img  class="logoTop" src="img/horse2.png" alt="the BetBuddie logo"/>

<div id="cornerInfo">
 	<div id="user"> <?php echo "User: <b>" . $_SESSION['username'] . "</b>"; ?></div>
	<div id="money"> <?php echo "Money: $" ?> <span id="moneyVal"><?php echo number_format($money, 2); ?></span></div>
	<div id="level"> <?php echo "Highest Level Reached: " . $level; ?></div>
</div>

<hr />

<div id="pu" style="display:none"></div>
<div id="puW" style="display:none"></div>

<div id="mainAppContent">

	<img class="logo" src="img/horse2_big.png" alt="the big betBuddie logo"/>

	<div class="mainButtons">
		<a href="#" onclick="goToPage('play-main.php');"><div class="button2">Start Playing!</div></a>
		<a href="#" onclick="goToPage('about.php');"><div class="button2">About</div></a>
		<!--<div class="button2"><a href="database.php">Show Database</a></div>-->
	</div>

</div>

	<div class="bottomButtons">
		<span class="button1" onclick="resetHist();goToPage('main.php')"><a href="#">main menu</a></span>
		<span class="button1" onclick="back();"><a href="#">back</a></span>		
		<span class="button1"><a href="php/submit_logout.php">logout</a></span>		
	</div>

<!--
	<div class="bottomButtonsRight">
		<span class="button1">
		<?php/*
		$url = htmlspecialchars($_SERVER['HTTP_REFERER']);
		  echo "<a href='$url'>back</a>";*/ 
		?>
		</span>
	</div>
-->

</div> <!-- END CONTAINER DIV -->

<!-- AUDIO PLAYER -->
<div id="musicDiv">
<audio id="musicPlayer" controls="controls" loop="loop" autoplay="autoplay">
  <source src="sound/music2.mp3" type="audio/mp3" />
  Your browser does not support the audio element.
</audio>
</div>

<!-- A dummy span used for playing audio files -->
<span id="dummySoundSpan"></span>

</body>

</html>


