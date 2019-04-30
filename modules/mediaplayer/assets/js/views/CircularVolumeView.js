var CircularVolumeView = (function($){
    
    function CircularVolumeView(){
        
        var self = this;
        
        let control;
        
        let controller = Subject.getInstance();

        
        let getVolume = function(angle){
            let proportional = 100/180;
            let volume = ( angle>=270 ) ? (angle - 270) * proportional : (angle * proportional) + 50; 
            return (volume / 100);
        }
        
        let getAngle = function(volume){

            // me aseguro de normalizarlo al rango [0 - 1];
            let normalizedVolume = (volume > 1) ? volume / 100 : volume;
            
            let vol = normalizedVolume * 100;
            
            let  proportional = 180/100;
            return (vol < 50) ? (vol / proportional) + 270 : (vol - 50) * proportional;
            
        }
        
        let configureControlView = function(){
            $('.'+Config.ui.VOLUME).removeClass(Config.ui.HORIZONTAL_VOLUME);
            $('.'+Config.ui.VOLUME).removeClass(Config.ui.VERTICAL_VOLUME);
            $('.'+Config.ui.VOLUME).addClass(Config.ui.CIRCULAR_VOLUME);
            
            $('.volume-indicator').remove();
            
        }
        
        
        self.init = function(status = null){
            let _angle = status ? getAngle(status['volume']) : 0;
            
            configureControlView();
            
            if (!control){
                control = new Propeller('.'+Config.ui.CIRCULAR_VOLUME, {
                     inertia: 0, 
                     speed: 0,
                     angle: _angle,
                     onRotate: function(){ 
                         if (this.angle > 90 && this.angle<180)
                             this.angle = 90;

                         if (this.angle < 270 && this.angle>180)
                             this.angle = 270;

                         controller.notify(getVolume(this.angle), 'CHANGE_VOLUME');

                     },
                 });
            }else{
                control.angle =  _angle;
            }
        }
        
                
    }
    
    var instance;
    
    return {
        getInstance: function(){
            if ( !instance )
                instance = new CircularVolumeView();
            
            return instance;
        }
    }
    
    
})(jQuery);