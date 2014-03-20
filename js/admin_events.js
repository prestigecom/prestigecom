
function Event(){
    
    this.init = function(page){
        
		
        
    };
    
}



$(document).ready(function(){
    
    var page = Data.page;
    
    //Onclick events
    Event.init(page);
    
    //Form events
    Form.init();
    
    //Init uploadify
    var pageToUploadify = ['project','project_detail'];
    var pageParams = {
        project:{imgSize:'900px',imgFolder:'projects'},
		project_detail:{imgSize:'590px',imgFolder:'projects'}
    }    
    if( $.inArray( page, pageToUploadify) !== -1 ){
        set_uploadify(page, pageParams[page].imgSize, pageParams[page].imgFolder);
    }

});