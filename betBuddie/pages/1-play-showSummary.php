
<div class="paragraph1" id="resultText1"></div>

<div class="paragraph1"> 
	The win, place and show payoff represents a $2 bet.
</div>

<img href="" src="" onload="alert('dsgf')"></img>

<?php
	require_once('../php/tables.php');
	$tP = new tableFetcher($DB_CONNECT, $DB_U, $DB_P);
	$tP->getResultTable1(125);
?>

<div class="mainButtons">
    <a href="#" onclick="enterPage('goToPage(\'2-play-mainCard.php\');jumpLevel(2);');"><div class="button2">advance to next level!</div></a>
</div>

