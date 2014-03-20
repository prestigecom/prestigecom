<?php
/*
Uploadify
Copyright (c) 2012 Reactive Apps, Ronnie Garcia
Released under the MIT License <http://www.opensource.org/licenses/mit-license.php> 
*/

require("../../config/config.php");

if (!empty($_FILES)){
    
    $tempFile = $_FILES['Filedata']['tmp_name'];
    $targetPath = UPLOADS;
    //$targetFile = rtrim($targetPath,'/') . '/' . $_FILES['Filedata']['name'];

    // Validate the file type
    $fileTypes = array('jpg','jpeg','gif','png'); // File extensions
    $FileSize	= filesize($tempFile);
    $fileParts = pathinfo($_FILES['Filedata']['name']);

    if(in_array(strtolower($fileParts['extension']), $fileTypes) && $FileSize<=5000000){
        
        // Uncomment the following line if you want to make the directory if it doesn't exist
        @mkdir(str_replace('//','/',$targetPath), 0755, true);
        
        list($width, $height) = getimagesize($tempFile);
        $key	= generate_key();
        
        //PROJECT
        if('project'==$_REQUEST['page']){
            if($width<900){
                echo 'invalid_size';
                exit;
            }
            
            $name			= 'project_'.$key.'.'.$fileParts['extension'];
            $targetFile		= str_replace('//','/',$targetPath) . 'projects/' . $name;
            
            move_uploaded_file($tempFile, $targetFile);
            
            @resize_image($targetFile, 1140);
        }
		elseif('project_detail'==$_REQUEST['page']){
            if($width<590){
                echo 'invalid_size';
                exit;
            }
            
            $name			= 'project_'.$key.'.'.$fileParts['extension'];
            $targetFile		= str_replace('//','/',$targetPath) . 'projects/' . $name;
            
            move_uploaded_file($tempFile, $targetFile);
            
            @resize_image($targetFile, 590);
        }
        //IMAGE
        /*elseif('images'==$_REQUEST['page']){
            
            $name		= 'image_'.$key.'.'.$fileParts['extension'];
            $targetFile		= str_replace('//','/',$targetPath) . 'img/' . $name;
            $name_mini		= 'image_mini_'.$key.'.'.$fileParts['extension'];
            $targetFile_mini= str_replace('//','/',$targetPath) . 'img/' . $name_mini;
            
            move_uploaded_file($tempFile, $targetFile);
            copy($targetFile, $targetFile_mini);
            
            @resize_image($targetFile_mini, 100);
            
            //Ajout de l'image à la BDD
            //$id_image = Image::add($name);
            
            if(is_numeric($id_image)) echo json_encode(array('id'=>$id_image, 'url'=>$name));
            exit;
        }*/
        
        echo $name;
        exit;
        
    }
    else{
        echo 'invalid_file_type';
    }

}

?>