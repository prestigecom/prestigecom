<div class="max_width" style="height:100%;">
	<div id="logo">
        <a href="./">
            <img src="{$img_dir}logo-furious-creation_white.png" alt="logo Furious Creation blanc" />
            <img src="{$img_dir}logo-furious-creation_black.png" alt="logo Furious Creation noir" />
        </a>
    </div>
    
    <div class="right">
    	<ul id="menu">
        	<li{if 'home'==$page->ref} class="selected"{/if}><a href="./">Accueil</a></li>
        	<li{if 'about'==$page->ref} class="selected"{/if}><a href="agence/">L'agence</a></li>
            <li{if 'realisations'==$page->ref} class="selected"{/if}><a href="realisations/">Réalisations</a></li>
            <li{if 'projects'==$page->ref} class="selected"{/if}><a href="incubator/">Furious incubator</a></li>
            <li><a href="#">Blog</a></li>
            <li{if 'contact'==$page->ref} class="selected"{/if}><a href="contact/">Contact</a></li>
            <li><a href="projet/">Un projet ?</a></li>
        </ul>
    </div>
</div>