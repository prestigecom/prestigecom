<?php

include("config/config.php");

?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr">
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="../favicon.ico">
<meta name="title" content="<?php echo $PAGE_DATA[$PAGE]['title']; ?>" />
<title><?php echo $PAGE_DATA[$PAGE]['title']; ?> - Admin Furious Creation</title>

<?php include INC.'admin_css.inc.php'; ?>

<script type="text/javascript" src="<?php echo JS; ?>jquery/jquery-<?php echo $JQUERY_VERSION; ?>.min.js"></script>
</head>

<body>

<!-- START HEADER -->

<header id="admin_header">
    <?php if(isset($_SESSION['user'])){ include PAGES.'admin_header.php'; } ?>
</header>

<!-- END HEADER -->

<!-- START CONTENT -->

<div id="admin_content">
    
    <div>
        <h1><?php echo $PAGE_DATA[$PAGE]['title']; ?></h1>
    </div>
    
    <div class="admin_container">
        <?php include(PAGES.$PAGE_DATA[$PAGE]['file'].'.php'); ?>
    </div>
    
</div>

<!-- END CONTENT -->

<?php include INC.'admin_js.inc.php'; ?>

</body>
</html>