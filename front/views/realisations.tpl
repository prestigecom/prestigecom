
<div id="categs_container" class="open_sans">
	<div id="categs_list_button">Catégories</div>
	<ul id="filters">
        <li><a href="#" data-filter=".videos">Vidéos</a></li>
        <li><a href="#" data-filter=".digital">Digital</a></li>
        <li><a href="#" data-filter=".print">Print</a></li>
        <li><a href="#" data-filter=".brand">Brand Content</a></li>
    </ul>
</div>

<div class="realisations_container">
	<ul id="realisations_list" class="isotope">
    	{foreach from=$realisations item=rea}
        <li class="{$rea.categ}">
            <a href="realisation/test/" class="bwWrapper"><img src="img/tmp/{$rea.img}.png" alt="Lorem ipsum dolor" /></a>
        </li>
        {/foreach}
    </ul>
</div>