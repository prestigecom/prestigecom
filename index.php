<?php

include('config/config.php');

//Get page data
if(file_exists(PAGES.$PAGE->ref.'.php')){
    include(PAGES.$PAGE->ref.'.php');
}

?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="fr">
<head>
<meta charset="utf-8">
<base href="<?php echo Site::getRelativeRoot(); ?>" />
<link rel="icon" type="image/png" href="favicon.png" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<?php include INC.'metadata.inc.php'; ?>

<?php include INC.'css.inc.php'; ?>

<?php if(!$IS_LOCAL){ ?>
<script type="text/javascript">

  /*var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-40609242-1']);
  _gaq.push(['_setDomainName', 'xtraordinarypeople.fr']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();*/

</script>
<?php } ?>

</head>

<body id="page_<?php echo $PAGE->ref; ?>" class="front">

<!-- START HEAD -->

<header id="header" <?php if(in_array($PAGE->ref, array('realisations','projects'))){ ?>class="fixed default"<?php } ?>>
    <?php include PAGES.'header.php'; ?>
</header>

<!-- END HEAD -->

<!-- START CONTENT -->

<main id="content">
    <?php include PAGES.'page.php'; ?>
</main>

<!-- END CONTENT -->

<!-- START FOOT -->

<footer id="footer">
    <?php include PAGES.'footer.php'; ?>
</footer>

<!-- END FOOT -->

<div id="go_top"></div>

<?php
if(!$IS_GOOGLE){
    include INC.'js.inc.php';
}
?>

</body>
</html>
