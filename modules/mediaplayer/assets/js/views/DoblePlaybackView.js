var DoblePlaybackView = (function($){
    
    function DoblePlaybackView(){
        
        var self = this;
        
        let controller = Subject.getInstance();
        
        let playButton = document.querySelector('.'+Config.ui.PLAY);
        
        let pauseButton = document.querySelector('.'+Config.ui.PAUSE);        
        
        let init = false;
        
        self.setStatus = function(status){
            playButton.style.display = 'block';
            pauseButton.style.display = 'block';
            
            if (status == Config.status.PLAYING){
                let play = $('.'+Config.ui.PLAY);
                if ( !play.hasClass('active') )
                    play.addClass('active');

                let pause = $('.'+Config.ui.PAUSE);
                if ( pause.hasClass('active') )
                    pause.removeClass('active');
            } 
            
            if (status == Config.status.PAUSED){
                let play = $('.'+Config.ui.PLAY);
                if ( play.hasClass('active') )
                    play.removeClass('active');

                let pause = $('.'+Config.ui.PAUSE);
                if ( !pause.hasClass('active') )
                    pause.addClass('active');                
            }
        }
        
        self.init = function(status){
            $('#'+Config.ui.ROOT).attr('data-playbackVew', Config.ui.DOBLE_PLAY);
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
                instance = new DoblePlaybackView();
            
            return instance;
        }
    }
    
    
})(jQuery);