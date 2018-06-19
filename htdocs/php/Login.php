<html>
<body>

Username: <?php
$uname = $_REQUEST["Username"];
echo 'bleh';
echo $uname;
phpinfo();
?><br>

Password hash: <?php
	dl ('C:\Users\rhennessey2019\Desktop\xampp\php\ext\php_pdo_mysql.dll');
 if (($_REQUEST["Password"]=='')) {
	echo 'Password cannot be blank';
}else{
		$mysqli = new PDO('mysql:host=localhost;dbname=test', 'root', '');
	$pwhash = hash('sha256', $_REQUEST["Password"]);
	echo $pwhash;
	if($mysqli->query("SELECT passwordhash FROM PERSON WHERE username = ".$uname) == $pwhash){
		$cookievalue = random_bytes(32);
		setcookie("user", $cookievalue, time()+3600, "/");
		$mysqli->query("UPDATE PERSON (active_cookie) VALUES ($cookievalue) WHERE username = $uname ".$uname);
	}else{
		echo 'error!';
	}
}
/*sanitize this for sql injection, also we must add a connection to the database at the beginning once we have a database.*/
?>
</body>
</html>
