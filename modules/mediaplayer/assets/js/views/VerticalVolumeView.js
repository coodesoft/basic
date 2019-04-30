var VerticalVolumeView = (function($){
    
    function VerticalVolumeView(){
        
        var self = this;
        
        let control;
        
        let slot = document.querySelector('.'+Config.ui.VOLUME);

        let controller = Subject.getInstance();

        let rightLimit;
        
        
        
        let configureControlView = function(){
            $('.'+Config.ui.VOLUME).removeClass(Config.ui.CIRCULAR_VOLUME);
            $('.'+Config.ui.VOLUME).removeClass(Config.ui.HORIZONTAL_VOLUME);
            $('.'+Config.ui.VOLUME).addClass(Config.ui.VERTICAL_VOLUME);
            
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
            let pos = vol * ( (slot.offsetHeight - control.offsetHeight) / 100 );
            pos = (slot.offsetHeight - control.offsetHeight) - ( pos * 100 );
            console.log(pos);
            control.style.top =  pos + 'px';
        }
        
        let setVolume = function(pos){
            let range = slot.offsetHeight - control.offsetHeight;
            let normalizePos = pos / 100;
            let vol = (pos * 100) / range;
            vol = 1 - (vol / 100);
            
            console.log('vol: '+vol);
            controller.notify(vol, 'CHANGE_VOLUME');
        }
        
        
        self.init = function(status = null){
            
            volume = status ? status['volume'] : 0;

            configureControlView();
            initIndicator(volume);

            $('.volume-indicator').draggable({
                axis: 'y',
                containment: 'parent',
                cursor: "crosshair",
                drag: function() {
                    let pos = $(this)[0].style.top.split('px')[0];
                    setVolume(pos);
                }
            });
            
        }
        
                
    }
    
    var instance;
    
    return {
        getInstance: function(){
            if ( !instance )
                instance = new VerticalVolumeView();
            
            return instance;
        }
    }
    
    
})(jQuery);