var HorizontalVolumeView = (function($){
    
    function HorizontalVolumeView(){
        
        var self = this;
        
        let control;
        
        let slot = document.querySelector('.'+Config.ui.VOLUME);

        let controller = Subject.getInstance();

        let rightLimit;
        
        
        
        let configureControlView = function(){
            $('.'+Config.ui.VOLUME).removeClass(Config.ui.CIRCULAR_VOLUME);
            $('.'+Config.ui.VOLUME).removeClass(Config.ui.VERTICAL_VOLUME);
            $('.'+Config.ui.VOLUME).addClass(Config.ui.HORIZONTAL_VOLUME);
            
            if (!control){
                control = document.createElement('div');
                control.classList.add('volume-indicator');
                slot.appendChild(control);
            }
        }
        
        
        let initIndicator = function(vol){
            vol = ( vol>1 ) ? vol/100 : vol;
            
            // (slot.offsetWidth - control.offsetWidth / 100) nos normaliza el 
            // desplazamiento a la longitud de slot menos el ancho del control
            let pos = vol * ( (slot.offsetWidth - control.offsetWidth) / 100 );
            control.style.left = ( pos * 100 ) + 'px';
        }
        
        let setVolume = function(pos){
            let range = slot.offsetWidth - control.offsetWidth;
            let normalizePos = pos / 100;
            let vol = (pos * 100) / range;
            vol = vol / 100;
            controller.notify(vol, 'CHANGE_VOLUME');
        }
        
        
        self.init = function(status = null){
            
            volume = status ? status['volume'] : 0;

            configureControlView();
            initIndicator(volume);

            $('.volume-indicator').draggable({
                axis: 'x',
                containment: 'parent',
                cursor: "crosshair",
                drag: function() {
                    let pos = $(this)[0].style.left.split('px')[0];
                    setVolume(pos);
                }
            });
            
        }
        
                
    }
    
    var instance;
    
    return {
        getInstance: function(){
            if ( !instance )
                instance = new HorizontalVolumeView();
            
            return instance;
        }
    }
    
    
})(jQuery);