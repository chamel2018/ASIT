<?php 
	if(isset($_POST['submit'])){
		$newVision = $_POST['vision']
		$personID = 1;
		mysql_query("INSERT INTO ANSWER(answer_id, response) VALUES((SELECT MAX(answer_id)+1 FROM ANSWER)".$newVision.") WHERE (SELECT p.person_id FROM ANSWER a JOIN Q_A_LINKER q ON (a.answer_id=q.answer_id) JOIN PROFILE_LINKER pl ON (q.Q_A_LINKER_id = pl.q_a_linker_id) JOIN PERSON p ON(p.person_id = pl.person_id)")
	}
?>