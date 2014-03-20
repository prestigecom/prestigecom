<?php

$smarty->assign('projects', Project::getAll());

$smarty->display(Site::getSmartyFile(__FILE__));

?>