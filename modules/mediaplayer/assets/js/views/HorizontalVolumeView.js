var HorizontalVolumeView = (function($){
    
    function HorizontalVolumeView(){
        
        var self = this;
        
        let control;
        
        let slot = document.querySelector('.'+Config.ui.VOLUME);

        let controller = Subject.getInstance();

        let rightLimit;
        
        let controlWidth = 20;
        
        let slotWidth;
        
        let configureControlView = function(){
            $('.'+Config.ui.VOLUME).removeClass(Config.ui.CIRCULAR_VOLUME);
            $('.'+Config.ui.VOLUME).removeClass(Config.ui.VERTICAL_VOLUME);
            $('.'+Config.ui.VOLUME).addClass(Config.ui.HORIZONTAL_VOLUME);
        }
        
        
        let initIndicator = function(vol){
            vol = ( vol>1 ) ? vol/100 : vol;
            

            let w = (slot.offsetWidth - control.offsetWidth);
            let slotWidth = $('.'+Config.ui.VOLUME)[0].offsetWidth;
            console.log(slotWidth);
            console.log((slot.offsetWidth - control.offsetWidth));
            
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
        
        self.initDimension = function(width){
            $('.'+Config.ui.VOLUME_INDICATOR).remove();
            control = document.createElement('div');
            control.classList.add(Config.ui.VOLUME_INDICATOR);
            slot.appendChild(control);

            slot.style.width = width+'px';
            control.style.width = controlWidth+'px';
        }
        
        self.init = function(status = null){
            
            volume = status ? status['volume'] : 0;

            configureControlView();
            initIndicator(volume);

            $('.'+Config.ui.VOLUME_INDICATOR).draggable({
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
        getInstance: function(width){
            if ( !instance )
                instance = new HorizontalVolumeView();
            
            instance.initDimension(width);
            return instance;
        }
    }
    
    
})(jQuery);