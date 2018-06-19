<?php 
if(isset($_POST['submit'])){
	$lastName = $_POST['StudentLName'];
	$firstName = $_POST['StudentFName'];
	$email = $_POST['StudentEmail'];
	$userName = $_POST['StudentUserName'];

	/*mysql_query("UPDATE PERSON SET email = ".$email.", l_name = ".$lastName.", f_name =".$firstName.", subject = ".$subject.", userName = ".$userName." WHERE **********THIS IS THE USER********");*/?>

	<script type="text/javascript">
		window.location = "../ASIT Student Account.html";
	</script> 
	<?php
}
?>