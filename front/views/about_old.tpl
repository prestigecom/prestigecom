
<section class="banner_team">
	
</section>

<section class="max_width projects_top_container">
    <div class="left"><img src="{$img_dir}logo-furious-creation_big.png" alt="Logo Furious Creation" /></div>
    <div class="right">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</div>
</section>

<section class="max_width auto ov_hidden">
	<h2>La team Furious au complet</h2>
    {foreach from=$team item=member}
    <div class="member_box">
    	<div class="member_thumbnail"></div>
        <p class="member_job pink">{$member.job}</p>
        <p class="member_desc">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
    </div>
    {/foreach}
</section>