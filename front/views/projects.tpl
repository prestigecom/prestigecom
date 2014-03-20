
<section class="incubator_box" style="background-image:url('{$img_dir}projects/bg_project_story_telling.jpg');">
    <div class="incubator_content">
        <img src="{$img_dir}projects/logo-my-story-telling.png" /><br />
        <div class="show_project_button auto">Découvrir le projet</div>
    </div>
    <div id="hdp_story" class="hide_project_button"></div>
</section>
<section id="story_telling_project" class="max_width project_container">
    <p class="project_desc">{$p->description}</p>
    <div class="carroussel"><img src="{$p->image_url}" alt="{$p->title}" /></div>
    <div class="text_center"><a href="{$p->website}" target="_blank" class="button">Découvrir le site</a></div>
    
    {foreach from=$p->details item=d}
    <div class="project_detail">
        <div class="pd_img"><img src="{$d->image_url}" alt="{$d->title}" /></div>
        <div>
            <h3>{$d->title}</h3>
            <p>{$d->description}</p>
        </div>
    </div>
    {/foreach}
</section>

<section class="incubator_box" style="background-image:url('{$img_dir}projects/bg_apotres.jpg');">
    <div class="incubator_content">
        <h2>Les apôtres</h2>
        <div class="show_project_button auto">Découvrir le projet</div>
    </div>
    <div id="hdp_apotres" class="hide_project_button"></div>
</section>
<section id="apotres_project" class="max_width project_container">
    <p class="project_desc">{$p->description}</p>
    <div class="carroussel"><img src="{$p->image_url}" alt="{$p->title}" /></div>
    <div class="text_center"><a href="{$p->website}" target="_blank" class="button">Découvrir le site</a></div>
    
    {foreach from=$p->details item=d}
    <div class="project_detail">
        <div class="pd_img"><img src="{$d->image_url}" alt="{$d->title}" /></div>
        <div>
            <h3>{$d->title}</h3>
            <p>{$d->description}</p>
        </div>
    </div>
    {/foreach}
</section>