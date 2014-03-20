<style>
#image_box img{ width:100%; }
</style>

<form name="detail_form" action="{$ctrl_dir}project.ctrl.php" method="post" class="admin_form">

    <label>Titre du projet associé</label>
    <input type="text" value="{$p->title}" disabled />
    
    <label>Titre *</label>
    <input type="text" name="title" maxlength="60" {if $edition}value="{$d->title}"{/if} />
    
    <label>Description *</label>
    <textarea name="desc" style="height: 200px;">{if $edition}{$d->description}{/if}</textarea>
    
    <label>Aperçu (Largeur min : 590px)</label>
    <input type="file" id="image_file" />
    <div id="image_box" style="width:590px; margin:auto;">{if $edition && ''!=$d->image}<img src="{$d->image_url}" />{/if}</div>
    
    <div class="text_center" style="margin-top: 10px;">
        <input type="hidden" name="submit_detail_form" />
        <input type="hidden" name="image" id="thumbnail" {if $edition}value="{$d->image}"{/if} />
        <input type="hidden" name="id_project" value="{$p->id}" />
        {if $edition}
        <input type="hidden" name="id_detail" value="{$d->id}" />
        {/if}
        <input type="button" id="submit_detail_form" value="{if $edition}Modifier{else}Ajouter{/if}" class="blue_button" />
    </div>

</form>
