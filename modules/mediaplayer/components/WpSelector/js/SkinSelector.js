var SkinSelectorView = (function($){
    
    function SkinSelectorView(){
        
        const WebPath = "/basic/web/assets";

        let self = this;

        let root = '#wp-selector';
    
        let webplayer = document.getElementById(Config.ui.ROOT);

        let skin;
        
        let defaultSkin = 'avplayer';
        
        let controller = SkinController.getInstance();
    
        let Intervalo = 0; //Variable que contendra el id del intervalo de actualizacion del selector
        
        const Vel_mov = 100; 
        
        const Margen_izq = 20;
        
        
        let setDynamicAsset = (viewID) => {

            let link = document.createElement('link');
            link.setAttribute('rel', 'stylesheet');
            link.setAttribute('id', 'dynamic-ext');
            link.setAttribute('href', WebPath + '/webplayers/'+viewID+'/css/webplayer.css');

            let toRemove = document.getElementById('dynamic-ext');
            if (toRemove)
                toRemove.remove();
            document.getElementsByTagName('head')[0].appendChild(link)
            
            
            let script = document.createElement('script');
            script.src = WebPath + '/webplayers/'+viewID+'/js/webplayer.js';
            script.id = 'dynamic-script';
            
            toRemove = document.getElementById('dynamic-script');
            if (toRemove)
                toRemove.remove();
            document.getElementById('dinamic-assets').appendChild(script);
        }
        
        let setSkin = (param) => {
            $('#RaMediaPlayer').removeClass(skin);
            skin = param;
            $('.skin-element').css('background', 'url(' + WebPath + '/webplayers/' + skin + '/images/img.png) no-repeat');
            $('#RaMediaPlayer').addClass(skin);
            
        };
        
        let configure = (skin) => {
            if (!skin)
                skin = defaultSkin;
            
            setDynamicAsset(skin);
            setSkin(skin);
        }
        
        
        let establecerVelocidad = function(MouseX) {
            var Px = MouseX - parseInt($("#wp-selector").offset().left);
            var Porcentaje = 100/parseInt($("#wp-selector-display").css('width'))*Px;
            var Posi_actual = parseInt($("#wp-selector .bullet-first").attr('data-Valor'));
            var Velocidad = 0;

            if (Porcentaje < 25) {
                Velocidad = (25-Porcentaje)/3;
            } else if (Porcentaje > 75) {
                Velocidad = (75-Porcentaje)/3;
            } 

            $("#wp-selector .bullet-first").attr('data-mover',Velocidad);
        }
        
        
        let actualizarSelector = function() {
            if ($("#wp-selector .bullet-first").attr('data-mover') != 0) {
                var Posi_actual = parseInt($("#wp-selector .bullet-first").attr('data-Valor'));
                Posi_actual += parseInt($("#wp-selector .bullet-first").attr('data-mover'));;
                situarControl("#wp-selector .bullet-first",Posi_actual);
            } 
        }   
        
        let situarControl = function(Control,Posicion) {
            var limite = 100/parseInt($("#wp-selector-display").css('width'))*parseInt($('.bullet').css('width'))*26 - 100;
            if (Posicion < Margen_izq && Posicion > -limite){
            $(Control).animate({'margin-left': Posicion + '%'},Vel_mov);
            $(Control).attr('data-Valor',Posicion);} 
        }
        
        self.init = () => {
            configure();
            
            $(root).off().on('click', '.bullet', function(){
        		$(this).siblings().attr('data-status', 'inactive');
                $(this).attr('data-status', 'active');
                configure( $(this).attr('data-target') );
            });
            
            $('body').on('mousemove', "#wp-selector", function(event) { 

                if ($('.flecha').css('display')!='block') 
                    establecerVelocidad(event.pageX);

                if (Intervalo == 0)
                    Intervalo = setInterval(actualizarSelector, Vel_mov);	
            });            

        }
                      
    }
    
    var instance;
    
    return {
        getInstance: function(){
            if ( !instance )
                instance = new SkinSelectorView();
            
            return instance;
        }
    }
    
    
})(jQuery);