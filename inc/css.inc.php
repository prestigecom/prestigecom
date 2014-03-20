
<?php if($IS_LOCAL){ ?>
<link type="text/css" href="<?php echo CSS; ?>global.css" rel="stylesheet" />
<link type="text/css" href="<?php echo CSS; ?>content.css" rel="stylesheet" />
<link type="text/css" href="<?php echo CSS; ?>header.css" rel="stylesheet" />
<link type="text/css" href="<?php echo CSS; ?>footer.css" rel="stylesheet" />
<?php }else{ ?>
<link type="text/css" href="<?php echo CSS; ?>front.css" rel="stylesheet" />
<?php } ?>
<link type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:300|Roboto+Slab" rel="stylesheet" />

<!-- PLUGINS -->
<link type="text/css" href="<?php echo JS; ?>jquery/jquery-ui-<?php echo $JQUERY_UI_VERSION; ?>.css" rel="stylesheet" />
<!-- PLUGINS -->