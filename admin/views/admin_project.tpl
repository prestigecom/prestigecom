<style>
#image_box img{ width:100%; }
</style>

<form name="project_form" action="{$ctrl_dir}project.ctrl.php" method="post" class="admin_form">

    <label>Titre du projet *</label>
    <input type="text" name="title" maxlength="60" {if $edition}value="{$p->title}"{/if} />
    
    <label>Adresse web</label>
    <input type="text" name="website" maxlength="60" {if $edition}value="{$p->website}"{/if} />
    
    <label>Description *</label>
    <textarea name="desc" style="height: 200px;">{if $edition}{$p->description}{/if}</textarea>
    
    <label>Aperçu (Largeur min : 900px)</label>
    <input type="file" id="image_file" />
    <div id="image_box">{if $edition && ''!=$p->image}<img src="{$p->image_url}" />{/if}</div>
    
    <div class="text_center" style="margin-top: 10px;">
        <input type="hidden" name="submit_project_form" />
        <input type="hidden" name="image" id="thumbnail" {if $edition}value="{$p->image}"{/if} />
        {if $edition}
        <input type="hidden" name="id_project" value="{$p->id}" />
        {/if}
        <input type="button" id="submit_project_form" value="{if $edition}Modifier{else}Ajouter{/if}" class="blue_button" />
    </div>

</form>
