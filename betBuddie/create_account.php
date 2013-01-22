<?php
?>

<!DOCTYPE html>

<html>

<head>
  <link id="cssLink" rel="styleSheet" href="css/universal.css" type="text/css"></link>
</head>

<body>

<div class="containerDivDynamicHeight" >

  <div class="title1">
    Create an account
  </div>


  <span class="loginLogo">
    <img class="horseImage1" src="img/horse1.png"></img>
  </span>


  <div class="loginBox">
    <form id="loginForm" method="post" action="php/submit_account.php">

      <div class="formLabel1"> Full Name
        <input type="text" name="fullname" />
      </div>

      <div class="formLabel1"> Email
        <input type="text" name="email" />
      </div>

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

  </div>

  <div class="button1Dynamic"><a href="login.php">Login Page</a></div>

</div>

</body>

</html>
