var Store = (function($){
    
    function Store(){
        
        var self = this;
        
        let _channels = new Collection();
        
        let _albums = new Collection();
        
        let _activeChannel;
        
        let _activeAlbum;
        
        let controller = Subject.getInstance();
        
        self.social = false;
        
        self.socialAlbumId = 0;
        
        self.loadChannels = function(data){
            
            
            data = !self.social ? JSON.parse(data) : data;
            for(let t=0; t<data.length; t++){
                
                let newChannel = new Channel();
                newChannel.load(data[t])

                if ( newChannel.status == true )
                    self.activeChannel(newChannel);    
                
                _channels.add(newChannel);
            }
            controller.notify(_channels, 'STORE_CHANNEL');
        }
        
        self.loadAlbums = function(data){
            data = JSON.parse(data);
            for(let t=0; t<data.length; t++){
                
                let newAlbum = new Album();
                newAlbum.load(data[t])
                
                if ( !self.social ){
                    if (t == 0)
                        self.activeAlbum(newAlbum);    
                } else{
                    if (newAlbum.id == self.socialAlbumId)
                        self.activeAlbum(newAlbum);
                }
                _albums.add(newAlbum);
            }

            controller.notify(_albums, 'STORE_ALBUM');
        }
        
        self.loadAlbum = function(data){
            data = JSON.parse(data);
            
            if (data.length)
                _activeAlbum.songs = new Collection();
            
            for(let t=0; t<data.length; t++){
                
                let newSong = new Song();
                newSong.load(data[t])
                _activeAlbum.songs.add(newSong);
            }

            controller.notify(_activeAlbum, 'STORE_SONG');        
        }
       
        self.channels = function(){
            return _channels;
        }
        
        self.albums = function(){
            return _albums;
        }
        
        self.activeChannel = function(channel = undefined){
            if ( channel ){
                _activeChannel = channel;
                controller.notify(_activeChannel.albums, 'ACTIVE_CHANNEL');
            }
            return _activeChannel;
        }
        
        self.activeAlbum = function(album = undefined){
            if ( album ){
                _activeAlbum = album;
                controller.notify(_activeAlbum, 'ACTIVE_ALBUM');
            }
            return _activeAlbum;
        }
        
    }
    
    var instance;
    
    return {
        getInstance: function(){
            if ( !instance )
                instance = new Store();
            
            return instance;
        }
    }
    
    
})(jQuery);