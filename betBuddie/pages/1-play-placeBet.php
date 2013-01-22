
<div class="paragraph1"> Welcome to Part Two of Level One.  In this race, you will be placing a PLACE bet.  When doing a place bet, you must predict which horse/jockey will come in fist or second place in the race.  Based on the statistics presented below, choose what jockey/horse pair you think will win.  Not sure what something means?  Just click on it.</div>

<a href="#" onclick="enterPage('storeBetInfo();placeBet(\'1-play-placeRace.php\');');"><div class="betButton">Submit Place Bet!</div></a>

<div class="boxInfo">
    <div><span>Your Pick: </span><b><span id="racer"></span></b></div>
    <div><label id="usrBet">Place Your Bet $ </label><input type="text" name="usrBet" id="uba" class="textBox" /></div>
</div>

<div class="cardPicker">
    <a href="#"><span class="cardButton" onclick="showCard('cards-1');">Main Card</span></a>
    <a href="#"><span class="cardButton" onclick="showCard('cards-2');">Show Horse Stats</span></a>
    <a href="#"><span class="cardButton" onclick="showCard('cards-3');">Show Jockey Stats</span></a>
</div>


<div id="cards">

<div id="cards-1">

<?php
	require_once('../php/tables.php');

	$tab = new tableFetcher($DB_CONNECT, $DB_U, $DB_P);
	$tab->getTables1(124, 1);
?>

</div>

</div>

