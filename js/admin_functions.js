
function count_words(str){
    
    var ponc = new Array('?', ',', ';', '.', '/', '\\', ':', '!', '%', "'", '_', '"', '{','}', '(', ')', '°', '=', '+', '*');
    
    for(i=0; i<ponc.length; ++i) str = str_replace(ponc[i], '', str);
    
    var total   = 0;
    var tab    = explode(' ', str);
    
    for(i=0; i<tab.length; ++i){
        if(tab[i]!='') ++total;
    }
    
    return total;
}

//Init uploadify
function set_uploadify(page, imgSize, imgFolder){
    
    if($('#image_file').length){

        $('#image_file').uploadify({
            'swf'      : 'uploadify/uploadify.swf',
            'uploader' : 'uploadify/uploadify.php?page='+page,
            'fileTypeExts' : '*.gif; *.jpg; *.png',
            'fileSizeLimit' : 5000000,
            'multi'    : false,
            'buttonText' : 'Choisir une image',
            'onUploadSuccess' : function(file, data, response){
                if(''!=data){
                    if('invalid_size'==data)
                        alert("Erreur : Dimension de l'image invalide. Essayez avec une image plus grande (min "+imgSize+").");
                    else{
                        if('project'==page || 'project_detail'==page){
							$('#image_box').html('<img src="../uploads/'+imgFolder+'/'+data+'" />');
						}
						else{
							$('#'+page+'_thumbnail_overview').css({'background-image':'url(../uploads/'+imgFolder+'/'+data+')','background-repeat':'no-repeat'});
						}
						$('#thumbnail').val(data);
                        /*if($id('id_'+page)){
                            alert('Pensez à cliquer sur le bouton "Modifier" pour que la nouvelle image soit bien prise en compte.');
                        }*/
                    }
                }
            }
        });

    }
    
}

//LAUNCH TINYMCE
function launch_tinymce(id_elmt){
    
    $('textarea#' + id_elmt).tinymce({
        // Location of TinyMCE script
        script_url : 'tiny_mce/tiny_mce.js',

        // General options
        theme : "advanced",
        plugins : "autolink,lists,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,advlist",

        // Theme options
        theme_advanced_buttons1 : "bold,italic,underline,|,justifyleft,justifycenter,justifyright,justifyfull,|,fontsizeselect,|,cut,copy,paste,|,bullist,numlist,|,undo,redo,|,link,unlink,image,|fullscreen",
        theme_advanced_buttons2 : "",
        /*
        theme_advanced_buttons1 : "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,styleselect,formatselect,fontselect,fontsizeselect",
        theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
        theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
        theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,pagebreak",
        */
        /*
        theme_advanced_toolbar_location : "top",
        theme_advanced_toolbar_align : "left",
        theme_advanced_statusbar_location : "bottom",
        */
        theme_advanced_resizing : false,
        theme_advanced_resize_horizontal : false,

        // Example content CSS (should be your site CSS)
        //content_css : "../css/content.css",

        // Drop lists for link/image/media/template dialogs
        template_external_list_url : "lists/template_list.js",
        external_link_list_url : "lists/link_list.js",
        external_image_list_url : "lists/image_list.js",
        media_external_list_url : "lists/media_list.js"
    });
    
}

//Recherche une ligne en fonction du texte
function search_in_list(str){
    
    if(''==str){
        $('.list_table tr:not(.hidden_elmt)').each(function(){$(this).show();});
    }
    else if(str.length>=2){

        var title   = '';
        var pos     = '';

        $('.list_table tr:not(.hidden_elmt)').each(function(){
            if($(this).data('title')){
                title   = $(this).data('title').toLowerCase();
                pos     = title.indexOf(str);
                if(pos>=0) $(this).show();
                else $(this).hide();
            }
        });

    }
    
}

function removeProject(id){
	
	if(!is_numeric(id)) return;
    
    if(confirm("Voulez-vous vraiment supprimer ce projet?")){
        
        file({
			file:Data.ctrl_dir+"project.ctrl.php",
			params:{
				action:'remove',
				id:id
			}
		}, function(msg){
			if('done'==msg){
				$('#line'+id).remove();
				$('.line'+id).remove();
			}else{
				alert('Erreur lors de la suppression!');
			}
		});
        
    }else{
        return;
    }
	
}

function removeProjectDetail(id){
	
	if(!is_numeric(id)) return;
    
    if(confirm("Voulez-vous vraiment supprimer ce contenu?")){
        
        file({
			file:Data.ctrl_dir+"project.ctrl.php",
			params:{
				action:'remove_detail',
				id:id
			}
		}, function(msg){
			if('done'==msg){
				$('#lined'+id).remove();
			}else{
				alert('Erreur lors de la suppression!');
			}
		});
        
    }else{
        return;
    }
	
}
