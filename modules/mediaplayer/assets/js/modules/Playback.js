var Playback = (function($){
    
    let store = Store.getInstance();
    
    let webPlayer = WebPlayer.getInstance();
    
    let controller = Subject.getInstance();
    
    
    function Playback(){
        let self = this;
        
        self.social = false;
        
        self.load = function(data){
            webPlayer.load(data);
        }
        
        self.initRadio = function(data){
            webPlayer.autoPlay();
        }

        
        self.playNextAlbum = function(){
            
            if ( !store.albums().isLast() ){
                let nextAlbum = store.albums().next();    
                store.activeAlbum(nextAlbum);
            } else{
                alert('Epa! parece que te escuchaste todo el Canal!');
                controller.notify(null, 'END_CHANNEL')
            }
            
        }
        
        self.playNextSong = function(){
            webPlayer.next();
        }

    }
    
    var instance;
    
    return {
        getInstance: function(){
            if ( !instance )
                instance = new Playback();
            
            return instance;
        }
    }
    
    
})(jQuery);