<?php

$smarty->assign('actual_url', $_SERVER['QUERY_STRING']);

$smarty->display(Site::getSmartyFile(__FILE__));

?>