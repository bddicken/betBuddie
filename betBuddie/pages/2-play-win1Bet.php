
<div class="paragraph1"> Welcome to Level Two.  In this race, you will be placing another WIN bet.  You now know more information about the race.  To see the past performance of each horse, take a look at the Horse Statistics card.</div>

<a href="#" onclick="enterPage('storeBetInfo();placeBet(\'2-play-win1Race.php\');');"><div class="betButton">Submit Win Bet!</div></a>

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
	$tab->getTables1(124, 2);
?>

</div>

</div>

