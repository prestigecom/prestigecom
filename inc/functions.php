<?php

function _vardump($array){
    echo '<pre>';
    print_r($array);
    echo '</pre>';
}

//=======================================================================//

//Check url
function is_url($url){
    //$url	= str_replace(' ', '%20', $url);
    return preg_match('|^http(s)?://[a-z0-9-]+(.[a-z0-9-_()éèêëçàâäïîùöô\']+)*(:[0-9]+)?(/.*)?$|i', $url);
}

//=======================================================================//

//Generate a sha1 key
function generate_key(){
    
    $aZ09	= array_merge(range('A', 'Z'), range('a', 'z'), range(0, 9));
    $key	= '';
    for($c=0; $c<12; ++$c){
       $key .= $aZ09[mt_rand(0,count($aZ09)-1)];
    }
    
    return sha1('love:'.$key.':love');
	
}

//Resize uploaded image
function resize_image($dir, $width){
	
    $copied_image	= $dir;
    $size		= @getimagesize($copied_image); 
    $height		= round(($width/$size[0])*$size[1]); //Get new height
    $ext		= getExtension($copied_image);

    if(($size[0]>$width)){ 
        ini_set( "memory_limit", "200M" ); //Upgrade memory size

        switch($ext){
                case "jpg": $src=imagecreatefromjpeg($copied_image);break;
                case "png": $src=imagecreatefrompng($copied_image); break;
                case "gif": $src=imagecreatefromgif($copied_image); break;
        } 

        $im	= imagecreatetruecolor($width, $height);
        imagealphablending($im, false);
        imagesavealpha($im, true);

        imagecopyresampled($im, $src, 0, 0, 0, 0, $width, $height, $size[0], $size[1]);			 

        switch($ext){
                case "jpg": imagejpeg($im, $copied_image, 100);break;
                case "png": imagepng($im, $copied_image); break;
                case "gif": imagegif($im, $copied_image); break;
        }
        
        @chmod($copied_image,0604);
    }
    
}

//=======================================================================//

function getExtension($filename) {
    $pos=strrpos($filename, ".")+1;
    return substr( trim(strtolower(substr($filename,$pos,strlen($filename)-$pos))) , 0, 3);
}

//=======================================================================//

function create_url($str, $delimiter='-') {
    $clean = iconv('UTF-8', 'ASCII//TRANSLIT', $str);
    $clean = preg_replace("/[^a-zA-Z0-9\/_|+ -]/", '', $clean);
    $clean = strtolower(trim($clean, '-'));
    $clean = preg_replace("/[\/_|+ -]+/", $delimiter, $clean);

    return $clean;
}


function str_truncate($str, $limit, $ellipsis = '...', $preserve_words = false) {
    if (mb_strlen($str, "utf-8") <= $limit) {
        return $str;
    }
 
    $limit -= mb_strlen($ellipsis, "utf-8");
    $pos = mb_strrpos($str, ' ', $limit - mb_strlen($str), "utf-8");
    if (!$preserve_words || $pos === false) {
        $pos = $limit;
    }
    
    return mb_substr($str, 0, $pos, "utf-8").$ellipsis;
}

//Get a web page content
function getWebpage($url, $type=''){

    if(!is_url($url)) return '';

    if(($content = Site::http_fetch_url($url)) === FALSE) {
        return NULL;
    }else{

        $content	= preg_replace('#(\r|\n)#', '', $content);
        //$content	= str_replace("&amp;", "&", $content);
        $content	= str_replace("&quot;", "'", $content);
        $content	= str_replace("&nbsp;", " ", $content);
        //$content	= htmlentities($content);

        /*if(substr_count($content, '&amp;')>0){
                $content	= str_replace("&amp;", "&", $content);
        }*/
        /*
        $content	= str_replace('&nbsp;', ' ', $content);
        $content	= str_replace("&Atilde; ", "à ", $content);
        */

        return html_entity_decode($content);

    }

}

?>