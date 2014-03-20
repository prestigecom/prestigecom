<p class="text_right">
	<a href="?page=project">Nouveau projet</a>
</p>

<table class="list_table">
    {foreach from=$projects item=p}
    <tr id="line{$p->id}">
        <td style="vertical-align:middle;"><a href="?page=project&id={$p->id}">{$p->title}</a></td>
        <td width="10"><a href="../{$p->url}" target="_blank" title="Voir la page"><img src="{$img_dir}icos/ico_view.png" class="icon" /></a></td>
        <td width="10"><a href="?page=project_detail&idp={$p->id}" title="Nouveau détail"><img src="{$img_dir}icos/ico_add.png" class="icon" /></a></td>
        <td width="10"><a href="?page=project&id={$p->id}" title="Modifier les informations"><img src="{$img_dir}icos/ico_edit.png" class="icon" /></a></td>
        <!--td width="15"><a href="http://validator.w3.org/check?uri=http://{$server_name}/{if 'page-home'!=$p->ref}{$p->url}{/if}" target="_blank" title="Vérifier les normes W3C"><img src="img/icos/w3c.png" /></a></td-->
        <td width="10">
            <a onclick="removeProject({$p->id})" title="Supprimer"><img src="{$img_dir}icos/ico_trash.png" class="icon" /></a>
        </td>
    </tr>
        {foreach from=$p->details item=d}
        <tr id="lined{$d->id}" class="line{$p->id}">
            <td colspan="3" style="vertical-align:middle;"><a href="?page=project_detail&idp={$p->id}&id={$d->id}">{$d->title}</a></td>
            <td width="10"><a href="?page=project_detail&idp={$p->id}&id={$d->id}" title="Modifier les informations"><img src="{$img_dir}icos/ico_edit.png" class="icon" /></a></td>
            <td width="10"><a onclick="removeProjectDetail({$d->id})" title="Supprimer"><img src="{$img_dir}icos/ico_trash.png" class="icon" /></a></td>
        </tr>
        {/foreach}
    {/foreach}
</table>