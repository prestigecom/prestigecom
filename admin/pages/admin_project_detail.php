<?php

if(!isset($_GET['idp']) || !is_numeric($_GET['idp'])) exit;

$d = array();
$p = Project::get($_GET['idp']);

if(isset($_GET['id']) && is_numeric($_GET['id'])){
    
    $d = Project::getDetail($_GET['id']);
    
}

$smarty->assign('d', $d);
$smarty->assign('p', $p);
$smarty->assign('edition', (isset($d->id) ? true : false));

$smarty->display(Site::getSmartyFile(__FILE__));

?>