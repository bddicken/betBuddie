<?php
	$fail = "";

	if($_GET['f'] == 'failed')
		$fail = "login failed, please try again or create an account";

// nothing
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
   <title>BetBuddie</title>
   <link id="cssLink" rel="styleSheet" href="css/universal.css" type="text/css" ></link>
   <link rel="shortcut icon" type="image/ico" href="http://www.rtip.trendap.com/racing-game/favicon.ico"></link>
</head>

<body>

<div class="containerDivDynamicHeight" >
  
  <div class="logoUA">
    <img src = "http://rtip.trendap.com/racing-game/img/logoReduced.png" alt="Logo for SISTA, UAScience, RTIP"/>
  </div>

  <div class="title1">
    Log in to BetBuddie
  </div>

  <span class="loginLogo">
    <img class="horseImage1" src="img/horse2_big_tail.png" alt="Logo for BetBuddie Page"></img>
  </span>

  <div class="loginBox">

    <form id="loginForm" method="post" action="php/submit_login.php">
      <div class="formLabel1"> Username
        <input type="text" name="username" />
      </div>

      <div class="formLabel1"> Password
        <input type="password" name="password" />
      </div>

      <div class="formLabel1">
        <input type="submit" name="login" />
      </div>
    </form>
	
    <div><?php echo $fail; ?></div>

  </div>

  <div class="button1Dynamic"><a href="create_account.php">Create Account</a></div>

</div>

</body>

</html>
