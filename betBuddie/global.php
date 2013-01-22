<?php
    include("php/global_vars.php");
    /*
    ** Miscellaneuos global stuff
    */
    @session_name("rtip");
    @session_start();
	
    if(isset($_SESSION['username'])) { }
    else {
        @header("Location: /racing-game/login.php?f=failed");
    }

    $db = new PDO($DB_CONNECT, $DB_U, $DB_P);
?>
