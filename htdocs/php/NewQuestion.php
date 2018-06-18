<?php 
	if(isset($_POST['submit'])){
		$newQuestion = $_POST['newQuestionName']
		mysql_query("INSERT INTO QUESTION(question_id, category_id, input_type_id, statement) VALUES((SELECT 1+MAX(question_id) FROM QUESTION), 1, 1, ".$newQuestion.")")
	}
	<script type="text/javascript">
		window.location = "../TeacherStrategies.html";
	</script> 
?>