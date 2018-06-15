<html>
<body>

Username: <?php 
$uname = $_REQUEST["Username"];
echo 'bleh';
echo $uname; 
?><br>

Password hash: <?php if (($_REQUEST["Password"]=='')) {
	echo 'Password cannot be blank';
}else{
	mysql_connect('localhost','root','');
    mysql_select_db("test");
	$pwhash = hash('sha256', $_REQUEST["Password"])
	echo $pwhash;
	if(mysql_query("SELECT passwordhash FROM PERSON WHERE username = ".$uname) == $pwhash){
		$cookievalue = random_bytes(32);
		setcookie("user", $cookievalue, time()+3600, "/");
		UPDATE PERSON (active_cookie) VALUES ($cookievalue) WHERE username = $uname; 
	}else{
		echo 'error!';
	}
} 
/*sanitize this for sql injection, also we must add a connection to the database at the beginning once we have a database.*/
?>
</body>
</html>