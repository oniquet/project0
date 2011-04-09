<?php
ob_start();
//to connect to db through server
include 'mainConnect.php';
// username and password sent from document
$uname = $_POST['username'];
$pass = $_POST['password'];

echo 'section 1 ' . $uname . ' ' . $pass;

//PROTECTION FROM MYSQL INJECTION
$uname = stripslashes($uname);
$uname = mysql_real_escape_string($uname);
$pass = stripslashes($pass);
$pass = mysql_real_escape_string($pass);

$quer = "SELECT * FROM users WHERE un='$uname' and pw='$pass'";
$result = mysql_query($quer);

$count = mysql_num_rows($result);

if($count==1){
    while($row = mysql_fetch_array($result)){
        $meUser = $row['un'];
        $meEp = $row['ep'];
    }
    session_register("meUser");
    session_register("meEp");
    header("location:index.php");
}
else {
echo "Wrong Username or Password";
}

ob_end_flush();
?>

