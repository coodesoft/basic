var ProgressBarView = (function($){
    
    function ProgressBarView(){
        
        var self = this;
        
        let controller = Subject.getInstance();
        
        let bar = document.querySelector('#progressBarIndicator');
        
                
    
        self.update = function(value){
            bar.style.width = value+'%';
        }
        
        self.init = function(){
            $('body').on(Config.status.IMAGE_LOADED, '#'+Config.ui.ROOT, function(){
                self.update(100);
                setTimeout(function(){
                    self.update(0);
                    $('#RaMediaPlayer').show();
                    }, 500);
                
            });
        }
    }
    
    var instance;
    
    return {
        getInstance: function(){
            if ( !instance )
                instance = new ProgressBarView();
            
            return instance;
        }
    }
    
    
})(jQuery);