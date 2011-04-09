<?php
$dbhost = 'localhost';
$dbuser = 'root';//cagdasca_user';
$dbpass = '49493513';//'123asd';
$db = 'cagdasca_teknocraft';

$conn = mysql_connect($dbhost, $dbuser, $dbpass) or die("Unable to connect to MySQL server");
$vt = mysql_select_db($db) or die("db error");

?>
