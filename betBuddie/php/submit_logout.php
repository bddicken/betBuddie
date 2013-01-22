<?php
/*
 * This script logs-out the user that is currently logged in.
 */

include("../global.php");
	
$_SESSION = array();
session_unset();
session_destroy();

// If it's desired to kill the session, also delete the session cookie.
// Note: This will destroy the session, and not just the session data!
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 42000,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
    );
}

header("Location: ../login.php");

?>
