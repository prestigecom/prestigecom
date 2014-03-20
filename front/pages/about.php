<?php

$team = array(
	array('name'=>'zy','job'=>'Directeur'),
	array('name'=>'jean-jacqueq','job'=>'Responsable Développement'),
	array('name'=>'matthieu','job'=>'Responsable digital'),
	array('name'=>'jean-david','job'=>'DA'),
	array('name'=>'jenny','job'=>'Chargé de production'),
	array('name'=>'gaël','job'=>'Développeur'),
	array('name'=>'marine','job'=>'Planneur Strat'),
	array('name'=>'john doe','job'=>'Réalisateur')
);

$smarty->assign('team', $team);

?>