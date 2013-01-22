<?php

include("../../global.php");	

class BetDBCaller
{
	var $db;
    
    private $P_DB_CONNECT;
    private $P_DB_U;
    private $P_DB_P;

    function __construct($dbc, $dbu, $dbp){
        $this->P_DB_CONNECT = $dbc;
        $this->P_DB_U = $dbu;
        $this->P_DB_P = $dbp;
        $db = new PDO($this->P_DB_CONNECT, $this->P_DB_U, $this->P_DB_P);
    }

	function getUserMoney($username)
	{
		global $db;
		// get the user's money info
	        $bet_query = $db->prepare("
	                SELECT Money FROM Users WHERE username = :usr");
		$secure_params = array( ':usr' => $username );
		$suc = $bet_query->execute($secure_params);
		$results = $bet_query->fetchAll();
		return $results;
	}
}

?>
