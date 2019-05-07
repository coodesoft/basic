var AlbumView = (function($){
    
    function AlbumView(){
        
        var self = this;
        
        let _actualAlbum;
        
        let controller = Subject.getInstance();
        
        let actualOffset;
        
        let albumCount;
                
        self.ALBUM_VIEW_SIZE = 120 //30 de ancho + 10 de margin;

        self.ALBUM_LIST;

        self.ALBUM_LIST_WRAPPER = document.querySelector('.'+Config.ui.ALBUM_LIST);

        self.PLAYBACK_INFO = document.querySelector('.'+Config.ui.PLAYBACK_INFO);
        
        self.appendToDOMList = function(data){
            let li = document.createElement('li');
            
            if (data.status == true){
                li.classList.add('active');
                document.getElementsByClassName(Config.ui.ALBUML_NAME)[0].innerHTML = data.name;
            }
            li.setAttribute('data-id', data.id);
            li.setAttribute('data-name', data.name); 
            li.setAttribute('data-artist', data.artist);
            var art = document.createElement("img");
            art.setAttribute('src', data.art);
            li.appendChild(art);
            
            self.ALBUM_LIST.appendChild(li);
        }
        
        self.createDynContainer = function(){
            let ul = document.createElement('ul');
            $('.'+Config.ui.ALBUM_LIST).empty();
            self.ALBUM_LIST_WRAPPER.appendChild(ul);
            
            self.ALBUM_LIST = document.querySelector('.'+Config.ui.ALBUM_LIST+' ul');
        }
        
        self.list = function(albums){
            self.createDynContainer();
            let size = 0;
            while ( !albums.isLast() ){
                let album = albums.next();
                self.appendToDOMList(album);
                size++;
            }
            albumCount = size;
            
            let width = size*self.ALBUM_VIEW_SIZE;
            
            self.ALBUM_LIST.style.width = width+'px';
            self.init();
        }
        
        self.updateWidth = function(album_view = 0){
            self.ALBUM_VIEW_SIZE = album_view;
            let width = albumCount * self.ALBUM_VIEW_SIZE;
            
            self.ALBUM_LIST.style.width = width + 'px';
            
        }
        
        self.updatePlaybackInfo = function(data){
            let info = data['album'].artist;
            info += ' - ' + data['album'].name;
            info += ' - ' + data['song'].name+' ';
            
            
            let infoE = document.createElement('div');
            infoE.textContent = info;
            infoE.setAttribute('id', 'PlaybackInfoMarquee')
            
            if (self.PLAYBACK_INFO.children[0])
                self.PLAYBACK_INFO.children[0].remove();
            
            self.PLAYBACK_INFO.appendChild(infoE);
            
            let separation = self.PLAYBACK_INFO.offsetWidth;
            
            $('#PlaybackInfoMarquee').marquee({
                duration: 5000,
                gap: separation,
                delayBeforeStart: 0,
                direction: 'left',
                duplicated: true                
            });
            
        }
        
        self.init = function(){
            self.ALBUM_LIST.style.right = '0px';
            
            $('.'+Config.ui.ALBUM_CONTAINER).off().on('click', '.'+Config.ui.ALBUM_LIST+' li', function(){
                _actualAlbum = this.getAttribute('data-name');
                let album = new Album();
                album.id = this.getAttribute('data-id');
                album.name = this.getAttribute('data-name');
                album.artist = this.getAttribute('data-artist');
                controller.notify(album, 'CLICK_ALBUM');
            });
            
            $('.'+Config.ui.ALBUM_CONTAINER).on('click', '.'+Config.ui.PREV_ALBUM, function(){
                let right = self.ALBUM_LIST.style.right.split('px');
                if (right[0]>0){
                    actualOffset = !actualOffset ? -self.ALBUM_VIEW_SIZE : actualOffset - self.ALBUM_VIEW_SIZE;
                    self.ALBUM_LIST.style.right = actualOffset+'px';
                }
                controller.notify(null, 'NAV_PREV_ALBUM');
            });

            $('.'+Config.ui.ALBUM_CONTAINER).on('click', '.'+Config.ui.NEXT_ALBUM, function(){
                let rightLimit = self.ALBUM_LIST_WRAPPER.offsetWidth;
                let right = self.ALBUM_LIST.style.right.split('px');
                let rightSide = self.ALBUM_LIST.offsetWidth - parseInt(right[0]);
                
                if (rightSide>rightLimit){
                    actualOffset = !actualOffset ? self.ALBUM_VIEW_SIZE : actualOffset + self.ALBUM_VIEW_SIZE;
                    self.ALBUM_LIST.style.right = actualOffset+'px';
                }
                controller.notify(null, 'NAV_NEXT_ALBUM');                
            });

        
        }
                
    }
    
    var instance;
    
    return {
        getInstance: function(){
            if ( !instance )
                instance = new AlbumView();
            
            return instance;
        }
    }
    
    
})(jQuery);