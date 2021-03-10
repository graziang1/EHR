<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <?php 
  #include './includes/connect.php';
  ?>

  <link rel="stylesheet" type="text/css" href="styles.css"/>
  <title>EHR</title>
  <style>
  
  </style>
</head>
<body>
<div class="header">
    <p>Welcome!</p>
    <h1>Electronic Health Records</h1>
</div>
<br>
<div class="card-body">
<form action="functions/try_login.php/" method="post">
  <div class="container">
    <label for="uname"><strong>Username</strong></label>
    <input type="text" placeholder="Enter your username" name="uname" required>
    <label for="psw"><strong>Password</strong></label>
    <input type="password" placeholder="Enter your password" name="psw" required>
    <input type="submit" class="button is-primary" value="Login">
  </div>
</form>

</div>  

</body>
</html>