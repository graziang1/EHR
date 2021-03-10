<?php //connect to DB 

// Create connection
$mysqli = new mysqli($servername, $username, $password, $dbname);

/* change character set to utf8 */
$mysqli->set_charset("utf8");


// Check connection
if ($mysqli->connect_error) {
    die("Connection failed: " . $mysqli->connect_error);
} 

?>