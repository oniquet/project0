<?php/*
session_start();

function logged(){
if(!session_is_registered(meUser)){
    $loginOn = 1;
}
else{
    $loginOn = 0;
}
echo $loginOn;
}

//to connect to db through server
include 'mainConnect.php';
*/
?>

<html>
	<head>
		<title>Teknocraft</title>
		<link rel="stylesheet" type="text/css" href="style.css" />
		<script type="text/javascript" src="jquery-1.5.1.min.js"></script>
	</head>
	<body>
		<div id="main">

			<div id="login">
				<form name="input" action="girisKontrol.php" method="post">
					username:<input type="text" name="username" />
					password:<input type="password" name="password" />
					<input type="submit" value="login" /></br>
					<a href="signup.php" class="login">new user</a>
				</form>
			</div>
			<div id="header">
				<img src="pics/logo.png" id="logo" />
				<div id="tagline">
					'Always different, always the same'
				</div>
			</div>
			<div id="posts">	
				<form name="input" action="kaydet.php" method="post">
					<table>
						<tr>
							<td><input type="text" name="heading" /></td>
						</tr>
						<tr>
							<td><textarea>Insert your post here</textarea></td>
						</tr>
						<tr>
							<td><input type="text" name="heading" /></td>
						</tr>	
					</table>	
					<input type="submit" value="submit your post" />
				</form>
			</div>
			<div id="footer"> <?php echo 'RRR'; ?></div>
		</div>
	</body>
</html>
