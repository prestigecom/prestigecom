
<script type="text/javascript" src="<?php echo JS; ?>jquery/jquery-ui-<?php echo $JQUERY_UI_VERSION?>.min.js"></script>
<script type="text/javascript" src="<?php echo JS; ?>json_parse.js"></script>
<script type="text/javascript" src="<?php echo JS; ?>admin_functions.js"></script>
<!--script type="text/javascript" src="<?php echo JS; ?>jquery.popup/jquery.popup.js"></script-->
<script type="text/javascript" src="<?php echo JS; ?>admin_events.js"></script>

<script type="text/javascript" src="<?php echo JS; ?>common_functions.js"></script>
<script type="text/javascript" src="<?php echo JS; ?>form.js"></script>

<!-- PLUGINS -->
<script type="text/javascript" src="uploadify/jquery.uploadify.js"></script>

<?php if('chapter'==$PAGE){ ?>
<script type="text/javascript" src="tiny_mce/jquery.tinymce.js"></script>
<?php } ?>
<!-- PLUGINS -->

<script type="text/javascript">
    
    var Data = {
        page          	: '<?php echo $PAGE; ?>',
		ctrl_dir		: '../control/',
		interface		: '<?php echo $INTERFACE; ?>',
		
		is_local	    : <?php echo ($IS_LOCAL ? 'true' : 'false'); ?>
    }
	
	var Form = new Form();
    var Event = new Event();
	
</script>
