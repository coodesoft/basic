var SinglePlaybackView = (function($){
    
    function SinglePlaybackView(){
        
        var self = this;
        
        let controller = Subject.getInstance();
        
        let playButton = document.querySelector('.'+Config.ui.PLAY);
        
        let pauseButton = document.querySelector('.'+Config.ui.PAUSE);        
        
        let init = false;
        
        self.setStatus = function(status){
            if (status == Config.status.PLAYING){
                pauseButton.style.display = 'block';
                playButton.style.display = 'none';
                pauseButton.classList.remove('active');
            } 
            
            if (status == Config.status.PAUSED){
                pauseButton.style.display = 'none';
                playButton.style.display = 'block';
                playButton.classList.remove('active');
            }
        }
        
        self.init = function(status){
            $('#'+Config.ui.ROOT).attr('data-playbackVew', Config.ui.SINGLE_PLAY);

            self.setStatus(status);
            
            $('.'+Config.ui.CONTROLS).off('click', '.'+Config.ui.PLAY);
            $('.'+Config.ui.CONTROLS).on('click', '.'+Config.ui.PLAY, function(){
                self.setStatus(Config.status.PLAYING);
                controller.notify(null, 'CLICK_PLAY');        
            });

            $('.'+Config.ui.CONTROLS).off('click', '.'+Config.ui.PAUSE);
            $('.'+Config.ui.CONTROLS).on('click', '.'+Config.ui.PAUSE, function(){
                self.setStatus(Config.status.PAUSED);
                controller.notify(null, 'CLICK_PAUSE');
            });
            
        }
        
        self.configure = function(status){
            self.setStatus(status);
        }
                
    }
    
    var instance;
    
    return {
        getInstance: function(){
            if ( !instance )
                instance = new SinglePlaybackView();
            
            return instance;
        }
    }
    
    
})(jQuery);