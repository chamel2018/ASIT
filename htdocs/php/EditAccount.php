<?php 
	if(isset($_POST['submit'])){
		$lastName = $_POST['TeacherLName'];
		$firstName = $_POST['TeacherFName'];
		$email = $_POST['TeacherEmail'];
		$subject = $_POST['TeacherSubject'];
		$userName = $_POST['TeacherUserName'];

		/*mysql_query("UPDATE PERSON SET email = ".$email.", l_name = ".$lastName.", f_name =".$firstName.", subject = ".$subject.", userName = ".$userName." WHERE **********THIS IS THE USER********");*/?>
		<script type="text/javascript">
			window.location = "../TeacherAccount.html";
		</script> 
	<?php
	}
	?>