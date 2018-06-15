<html>
<body>

Username: <?php echo $_REQUEST["Username"]; ?><br>
Password hash: <?php if (($_REQUEST["Password"]=='')) {
	echo 'Password cannot be blank';
}else{
	echo hash('sha256', $_REQUEST["Password"]);
} ?>
</body>
</html>