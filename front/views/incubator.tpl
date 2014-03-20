
<h1 class="pink">Nos projets</h1>

<section class="max_width projects_top_container">
    <div class="left"><img src="{$img_dir}logo-furious-creation_big.png" alt="Logo Furious Creation" /></div>
    <div class="right">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</div>
</section>

<section class="max_width project_container">
	{foreach from=$projects item=p}
    <h2>{$p->title}</h2>
    <p>{$p->description}</p>
    <div class="carroussel"><img src="{$p->image_url}" alt="{$p->title}" /></div>
    <div class="button auto"><a href="{$p->website}" target="_blank">Découvrir le site</a></div>
    
    {foreach from=$p->details item=d}
    <div class="project_detail">
    	<div class="pd_img"><img src="{$d->image_url}" alt="{$d->title}" /></div>
        <div>
        	<h3>{$d->title}</h3>
            <p>{$d->description}</p>
        </div>
    </div>
    {/foreach}
    
    {/foreach}
</section>