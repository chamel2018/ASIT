<?php 
	if(isset($_POST['submit'])){
		$newQuestion = $_POST['newQuestionName']
		
		$servername = "localhost:8080";
		$username = "root";
		$password = "";
		$conn = new mysqli($servername, $username, $password);
		if (!$conn) {
  			echo "Connection Failed"
		}
		/*this connects to the database*/

		mysql_query("INSERT INTO QUESTION(question_id, category_id, input_type_id, statement) VALUES((SELECT 1+MAX(question_id) FROM QUESTION), 1, 1, ".$newQuestion.")")
	}
	<script type="text/javascript">
		window.location = "../TeacherStrategies.html";
	</script> 
?>