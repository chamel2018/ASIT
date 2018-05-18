<html>
<body>

Code: <?php echo $_REQUEST["Code"]; ?><br>
Password hash: <?php if ($_REQUEST["Password"]==$_REQUEST["PasswordCheck"]) {
	echo hash('sha256', $_REQUEST["Password"]);
}else{
	echo 'passwords do not match';
} ?>
</body>
</html>