<?php

$p = array();

if(isset($_GET['id']) && is_numeric($_GET['id'])){
    
    $p     = Project::get($_GET['id']);
    
}

$smarty->assign('p', $p);
$smarty->assign('edition', (isset($p->id) ? true : false));

$smarty->display(Site::getSmartyFile(__FILE__));

?>