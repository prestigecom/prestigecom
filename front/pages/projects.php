<?php

$smarty->assign('projects', Project::getAll());
$smarty->assign('p', Project::get(1));

?>