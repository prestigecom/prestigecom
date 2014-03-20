<?php

if(file_exists(PAGES.$PAGE->ref.'.php')){
	$smarty->display($PAGE->ref.'.tpl');
}else{
    $smarty->display(Site::getSmartyFile(__FILE__));
}

?>
