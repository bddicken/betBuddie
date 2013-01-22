<?php

include("global_vars.php");

class tableFetcher
{
    private $P_DB_CONNECT;
    private $P_DB_U;
    private $P_DB_P;

    function __construct($dbc, $dbu, $dbp){
        $this->P_DB_CONNECT = $dbc;
        $this->P_DB_U = $dbu;
        $this->P_DB_P = $dbp;
    }

	function addOrdinalNumberSuffix($num) {
		if (!in_array(($num % 100),array(11,12,13))){
			switch ($num % 10) {
				// Handle 1st, 2nd, 3rd
				case 1:  return $num.'st';
				case 2:  return $num.'nd';
				case 3:  return $num.'rd';
			}
		}
		return $num.'th';
	}

	/*
	 * Construct the tr and td elements of a table form a 2d array
	 */
	function buildTRTD1($arr)
	{
		// printing table headers
		$return_t = "";
		foreach($arr as $row) {
			$return_t .= '<tr>';
			$i=0;
			foreach($row as $value) {
				if($i==0) {
					$return_t .= '<td width="100px">' . $value . '</td>';
				}
				$i=($i+1)%2;
			}
			$return_t .= '<td><a href="#" onclick="selectHJ(\''. $row[2] . ' and ' . $row[3] . ' - ' . $row[1] . '\')"><b> pick me </b></a></td>';
			$return_t .= '</tr>';
		}
		return $return_t;
	}

	function getTables1($raceID, $level) {
	
        $db = new PDO($this->P_DB_CONNECT, $this->P_DB_U, $this->P_DB_P);
	
		$test_query = $db->prepare("SELECT Silks, HorseNumber, HorseName, JockeyName, Trainer, Owner FROM RaceInstance WHERE RaceID = :rid");
		$suc = $test_query->execute( array(':rid' => $raceID) );
		$results = $test_query->fetchAll();
	
		$return_table = "";
       		$return_table = $return_table . '<table class="raceCard" table border="1">';
		$return_table = $return_table . '<tr class="caption">  <td width="50px"><a class="click" href="#" onclick="popUp(\'silks.html\');"> <b class="ulgreen"> Silks </b> </a> </td> <td width="40px"><a class="click" href="#" onclick="popUp(\'gateHorseNumber.html\');"> <b class="ulgreen"> Number </b> </a> </td> <td width="150px"><a class="click" href="#" onclick="popUp(\'horseName.html\');"> <b class="ulgreen"> Horse </b> </a> </td> <td width="150px"> <a class="click" href="#" onclick="popUp(\'jockey.html\');"> <b class="ulgreen"> Jockey </b> </a> </td> <td width="150px"><a class="click" href="#" onclick="popUp(\'trainer.html\');"> <b class="ulgreen"> Trainer </b> </a> </td> <td width="200px"><a class="click" href="#" onclick="popUp(\'owner.html\');"> <b class="ulgreen"> Owner </b> </a> </td> <td width="100px"><b> Bet on them? </b></td> </tr>';
	
		$return_table .= $this->buildTRTD1($results);

		$return_table = $return_table . '</table>';
		//echo '<br /><br /> Race Card: <br /><br />';
		echo $return_table;


		echo '</div>';
		echo '<div id="cards-2" style="display:none">';

		if($level >= 2)
			$more = ", r.PastPerf ";

		$test_query = $db->prepare("
		        SELECT r.HorseName, r.Starts, r.FirstPlace, r.SecondPlace, r.ThirdPlace, r.WinPercent, r.ITMPercent". $more ."
			FROM 
			HStats r, 
			(SELECT HorseID FROM RaceInstance WHERE RaceID = :rid) m
			WHERE m.HorseID = r.HorseID
		");
		$suc = $test_query->execute( array(':rid' => $raceID) );
		$results = $test_query->fetchAll();
	
		$return_table = "";
       		$return_table = $return_table . '<table class="raceCard" table border="1">';
		$return_table = $return_table . '<tr class="caption"> <td width="100px"><a class="click" href="#" onclick="popUp(\'horseName.html\');"> <b class="ulgreen"> Horse Name </b> </a> </td> <td width="30px"><a class="click" href="#" onclick="popUp(\'horseStarts.html\');"> <b class="ulgreen"> Starts </b> </a> </td> <td width="30px"><a class="click" href="#" onclick="popUp(\'horse1stPlace.html\');"> <b class="ulgreen"> 1st Place </b> </a> </td> <td width="30px"><a class="click" href="#" onclick="popUp(\'horse2ndPlace.html\');"> <b class="ulgreen"> 2nd Place </b> </a> </td> <td width="30px"><a class="click" href="#" onclick="popUp(\'horse3rdPlace.html\');"> <b class="ulgreen"> 3rd Place </b> </a> </td> <td width="30px"><a class="click" href="#" onclick="popUp(\'horseWinPercentage.html\');"> <b class="ulgreen"> Win Percentage </b> </a>  <td width="30px"><a class="click" href="#" onclick="popUp(\'horseITMPercentage.html\');"> <b class="ulgreen"> ITM Percentage </b> </a> </td>' ;
		if($level >= 2)
			$return_table .= '<td width="30px"><a class="click" href="#" > <b class="ulgreen"> Past Perf. </b> </a> </td>';
		$return_table .= '</tr>';
		

		// printing table headers
		foreach($results as $row)
		{
			$return_table = $return_table . '<tr>';
			$i=0;
			foreach($row as $value) {
				if($i==1) {
					$return_table = $return_table . '<td width="100px">' . $value . '</td>';
				}
				$i=($i+1)%2;
			}
			$return_table = $return_table . '</tr>';
		}
	
		$return_table = $return_table . '</table>';
		//echo '<br /><br /> Horse Statistics: <br /><br />';
		echo $return_table;
		echo '</div>';
		echo '<div id="cards-3"  style="display:none" >';

		$test_query = $db->prepare("
		    SELECT r.JockeyName, r.Starts, r.FirstPlace, r.SecondPlace, r.ThirdPlace, r.WinPercent
			FROM 
			JStats r, 
			(SELECT JockeyID FROM RaceInstance WHERE RaceID = :rid) m
			WHERE m.JockeyID = r.JockeyID
		
		");
		$suc = $test_query->execute( array(':rid' => $raceID) );
		$results = $test_query->fetchAll();
	
		$return_table = "";
       		$return_table = $return_table . '<table class="raceCard" table border="1">';
		$return_table = $return_table . '<tr class="caption"> <td width="100px"><a class="click" href="#" onclick="popUp(\'jockeyName.html\');"> <b class="ulgreen"> Jockey Name </b> </a> </td> <td width="50px"><a class="click" href="#" onclick="popUp(\'jockeyStarts.html\');"> <b class="ulgreen"> Starts </b> </a> </td> <td width="50px"><a class="click" href="#" onclick="popUp(\'jockey1stPlace.html\');"> <b class="ulgreen"> 1st Place </b> </a> </td> <td width="50px"><a class="click" href="#" onclick="popUp(\'jockey2ndPlace.html\');"> <b class="ulgreen"> 2nd Place </b> </a> </td> <td width="50px"><a class="click" href="#" onclick="popUp(\'jockey3rdPlace.html\');"> <b class="ulgreen"> 3rd Place </b> </a> </td> <td width="50px"><a class="click" href="#" onclick="popUp(\'jockeyWinPercentage.html\');"> <b class="ulgreen"> Win Percentage </b> </a> </td> ' ;
		
		// printing table headers
		foreach($results as $row)
		{
			$return_table = $return_table . '<tr>';
			$i=0;
			foreach($row as $value) {
				if($i==0) {
					$return_table = $return_table . '<td width="100px">' . $value . '</td>';
				}
				$i=($i+1)%2;
			}
			$return_table = $return_table . '</tr>';
		}
	
		$return_table = $return_table . '</table>';
		//echo '<br /><br /> Jockey Statistics: <br /><br />';
		echo $return_table;
	}


	function getResultTable1($raceID)
	{
        $db = new PDO($this->P_DB_CONNECT, $this->P_DB_U, $this->P_DB_P);
	
		$test_query = $db->prepare("
			SELECT FinishCall, HorseName, JockeyName, winPayoff, placePayoff, showPayoff
			FROM RaceInstance 
			WHERE RaceID = :rid
			ORDER BY FinishCall ASC"
		);
		$suc = $test_query->execute( array(':rid' => $raceID));
		$results = $test_query->fetchAll();
	
		$return_table = "";
       	$return_table = $return_table . '<table class="raceCard" border="1">';
		$return_table = $return_table . '<tr class="caption"> <td width="100px"><b> Order of Finish </b></td> <td width="100px"><b> Horse </b></td> <td width="100px"><b> Jockey </b></td> <td width="100px"><b> Win Payoff </b></td> <td width="100px"><b> Place Payoff </b></td> <td width="100px"><b> Show Payoff </b></td> </tr>';
		
		// printing table headers
		foreach($results as $row)
		{
			$shouldDollar = 0;
			$return_table = $return_table . '<tr>';
			$i=0;

			foreach($row as $value) {
				if($i==0) {

					if($value === '0')
						$value = "";

					/* Use this if statememnt to determine if the value is the position ranking.
					 * If it is, put a "st", "nd", "rd"...etc after each number. */
					else if($shouldDollar >= 0 && $shouldDollar < 2) {
						$value = $this->addOrdinalNumberSuffix($value);
					}

					else if($shouldDollar >= 6 && $shouldDollar < 11)
						$value = "$" . number_format($value, 2);

					$return_table = $return_table . '<td width="100px">' . $value . '</td>';
				}
				$i=($i+1)%2;
				$shouldDollar++;
			}
			$return_table = $return_table . '</tr>';
		}
	
		$return_table = $return_table . '</table>';
		echo '<br /><br /> Race Results: <br /><br />';
		echo $return_table;
	}
}

?>

