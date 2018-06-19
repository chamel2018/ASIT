<?php 
	if(isset($_POST['submit'])){
		$lastName = $_POST['TeacherLName'];
		$firstName = $_POST['TeacherFName'];
		$email = $_POST['TeacherEmail'];
		$subject = $_POST['TeacherSubject'];
		$userName = $_POST['TeacherUserName'];

		$teacherId = 2;/*Change this once we have the capability to tell what user is logged in to the person_id of the person logged in*/

		$servername = "localhost:8080";
		$username = "root";
		$password = "";
		$conn = new mysqli($servername, $username, $password);
		if (!$conn) {
  			echo "Connection Failed"
		}
		/*^this connects to the database*/

		mysql_query("UPDATE PERSON SET email = ".$email.", l_name = ".$lastName.", f_name =".$firstName.", subject = ".$subject.", userName = ".$userName." WHERE person_id = ".$teacherId); ?>
		<script type="text/javascript">
			window.location = "../TeacherAccount.html";
		</script> 
	<?php
	}
	?>