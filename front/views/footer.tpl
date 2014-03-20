
{if 'contact'!=$page->ref}
<div id="pink_bar">
   <div>Commençons un nouveau projet ensemble!</div>
   <div class="uppercase"><a href="projet/">Nous contacter</a></div>
</div>
{/if}
<div id="footer_content" class="open_sans">
	<div class="max_width">
        <div class="fc_box"><img src="{$img_dir}logo-furious-creation_white.png" alt="Logo Furious Creation" /></div>
        {if !$is_google}
        <div class="fc_box">
        	<h4>Nous rendre visite</h4>
            <p>Furious Creation<br />53 rue Cristino Garcia<br />93210 St Denis</p>
        </div>
        <div class="fc_box">
        	<h4>Nous parler</h4>
            <p>contact@furiouscreation.com<br />Tél : 01 80 60 48 43</p>
        </div>
        {/if}
        <div class="fc_box">
        	<h4>Nous suivre</h4>
            <ul class="social">
                <li class="facebook"><a href="#">Facebook</a></li>
                <li class="twitter"><a href="#">Twitter</a></li>
            </ul>
            <div class="left addthis_toolbox addthis_default_style">
                <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
              	<a class="addthis_button_tweet"></a>
            </div>
        </div>
    </div>
</div>
<div id="footer_bottom">
	<div class="max_width">
    	<div class="left"><a href="#">Mentions légales</a> | <a href="#">Notre manifeste</a></div>
        <div class="right">Copyright by Furious Creation | All rights reserved</div>
    </div>
</div>