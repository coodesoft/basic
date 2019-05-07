var ControlView = (function($){
    
    function ControlView(){
        
        var self = this;
        
        let controller = Subject.getInstance();
        
        self.init = function(){

            $('.'+Config.ui.CONTROLS).on('click', '.'+Config.ui.NEXT_SONG, function(){
                controller.notify(null, 'CLICK_NEXT_SONG');        
            });

            $('.'+Config.ui.CONTROLS).on('click', '.'+Config.ui.PREV_SONG, function(){
                controller.notify(null, 'CLICK_PREV_SONG');        
            });
            
        }
                
    }
    
    var instance;
    
    return {
        getInstance: function(){
            if ( !instance )
                instance = new ControlView();
            
            return instance;
        }
    }
    
    
})(jQuery);