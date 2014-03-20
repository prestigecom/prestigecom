
<script src="<?php echo JS; ?>jquery/jquery-<?php echo $JQUERY_VERSION; ?>.min.js"></script>
<script src="<?php echo JS; ?>jquery/jquery-ui-<?php echo $JQUERY_UI_VERSION; ?>.min.js"></script>
<?php if($IS_LOCAL){ ?>
<script src="<?php echo JS; ?>events.js"></script>
<script src="<?php echo JS ?>common_functions.js"></script>
<script src="<?php echo JS; ?>functions.js"></script>
<script src="<?php echo JS; ?>form.js"></script>
<?php }else{ ?>
<script src="<?php echo JS; ?>all_min.js"></script>
<?php } ?>

<!-- PLUGINS -->
<script src="<?php echo JS; ?>jquery/plugins/jquery.slides.min.js"></script>
<script src="<?php echo JS; ?>jquery/plugins/jquery.scrollTo-1.4.3.1-min.js"></script>

<?php if('realisations'==$PAGE->ref){ ?>
<script src="<?php echo JS; ?>jquery/plugins/jquery.BlackAndWhite.js"></script>
<script src="<?php echo JS; ?>jquery/plugins/jquery.isotope.min.js"></script>
<?php }elseif('contact'==$PAGE->ref){ ?>
<script src="https://maps.googleapis.com/maps/api/js?v=3&amp;sensor=false"></script>
<?php } ?>

<!-- PLUGINS -->

<script>
	var Event = new Event();
	var Form = new Form();
	
    var Data = {
        page		: '<?php echo $PAGE->ref; ?>',
		ctrl_dir	: 'control/',
		img_dir		: '<?php echo IMG; ?>',
		interface	: '<?php echo $INTERFACE; ?>',
		
		is_local  	: <?php echo ($IS_LOCAL ? 'true' : 'false'); ?>
    }
	
	
	$(document).ready(function(){
		var page = Data.page;
		Event.init(page);
	});
	
</script>
