
<div class="paragraph1" id="resultText1"></div>

<div class="paragraph1"> Here are the results from the race.  </div>

<img href="" src="" onload="alert('dsgf')"></img>

<?php
	require_once('../php/tables.php');
	$tP = new tableFetcher($DB_CONNECT, $DB_U, $DB_P);
	$tP->getResultTable1(123);
?>

<div class="mainButtons">
    <a href="#" onclick="enterPage('goToPage(\'you-won.php\');');"><div class="button2">advance</div></a>
</div>

