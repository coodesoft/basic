var Application = (function($){

    
    function Application(){
    
        var self = this;
        
        let navigation = Navigation.getInstance();

        let requester = Requester.getInstance();

        let store = Store.getInstance();

        let channelView = ChannelView.getInstance();

        let albumView = AlbumView.getInstance();   

        let controlView = ControlView.getInstance();

        let webPlayer = WebPlayer.getInstance();

        let playback = Playback.getInstance();

        let controller = Subject.getInstance();
        
        let progressBar = ProgressBarView.getInstance();

        let loadChannels = function(data){
            requester.getContent('channels', undefined, 'LOAD_CHANNEL');
        }

        let loadAlbums = function(data){
            let params = [];
            params['id'] = store.activeChannel().id;
            requester.getContent('albums', params, 'LOAD_ALBUM');
        }

        let loadSongs = function(data){
            let params = [];
            params['id'] = store.activeAlbum().id;
            requester.getContent('songs', params, 'LOAD_SONG');
        }
        
        let updatePlaybackView = function(data){
            let root = $('.'+Config.ui.ROOT);
            
            if (root.attr('data-playbackView') == Config.ui.SINGLE_PLAY)
                SinglePlaybackView.getInstance().setStatus(webPlayer.status());
            else
                DoblePlaybackView.getInstance().setStatus(webPlayer.status());
        }

        
        let storeSocialChannel = function(){
            let channel = [];
            channel['id'] = $('#channelId').attr('data-channel');
            channel['name'] = $('#channelName').attr('data-channelName');
            
            store.socialAlbumId = $('#albumId').attr('data-album');
            
            store.loadChannels( [channel] );

        }
        
        /*
         * Se suscriben todos los métodos necesarios para establecer
         * el estado inicial de la aplicación.
         */
        self.init = function(){
            
            
            /*
             * *******  CARGA SOCIAL DEL CONTENIDO  ********
             */
            
            let socialAlbum = document.querySelector('#albumId');
            if (socialAlbum){
                store.social = true;
                requester.social = true;
                controller.subscribe(storeSocialChannel, 'SOCIAL_CONNECTION' );
                controller.subscribe(webPlayer.configure, 'SOCIAL_CONNECTION' );

            } 
             

            /*
             * *******  CARGA INICIAL DEL CONTENIDO  ********
             */

            // se suscribe la carga de canales luego de una conexión exitosa
            controller.subscribe(loadChannels, 'SUCCESS_CONNECTION' );
            // se suscribe la configuración del reproductor web con los parametros de acceso al mserver
            controller.subscribe(webPlayer.configure, 'SUCCESS_CONNECTION' );

            // se suscribe el almacenamiento en la Store de los canales cargados previamente.
            controller.subscribe(store.loadChannels, 'LOAD_CHANNEL');
            // se muestran los canales cargados en la suscripción previa

            controller.subscribe(channelView.list, 'STORE_CHANNEL');


            // se suscribe la carga de los álbumes del canal por defecto cargado previamente
            controller.subscribe(loadAlbums, 'ACTIVE_CHANNEL');
            // se suscribe el almacenamiento en la Store de los albumes cargados previamente.
            controller.subscribe(store.loadAlbums, 'LOAD_ALBUM');
            // se muestran los álbumes cargados en la suscripción previa
            controller.subscribe(albumView.list, 'STORE_ALBUM');


            // se suscribe la carga de canciones del primer álbum cargado previamente
            controller.subscribe(loadSongs, 'ACTIVE_ALBUM');
            // se suscribe el almacenamiento de las canciones del álbum cargado previamente.
            controller.subscribe (store.loadAlbum, 'LOAD_SONG');
            // se suscribe la asignación de la canción a reproducirse 
            controller.subscribe(playback.load, 'STORE_SONG');

            controller.subscribe(playback.initRadio, 'ASSIGN_SONG');

            controller.subscribe(playback.playNextAlbum, 'END_ALBUM');

            controller.subscribe(playback.playNextSong, 'END_AUDIO')

            controller.subscribe(albumView.updatePlaybackInfo, 'PLAY_SONG');

            controller.subscribe(updatePlaybackView, 'PLAY_SONG');
            
            /*
             * *******  BIND DE FUNCIONES  ********
             */

            // se suscribe la activación de un nuevo canal luego de un click sobre un elemento del DOM
            /// perteneciente a un canal
            controller.subscribe(store.activeChannel, 'CLICK_CHANNEL');

            controller.subscribe(store.activeAlbum, 'CLICK_ALBUM');

            
            controller.subscribe(webPlayer.play, 'CLICK_PLAY');

            controller.subscribe(webPlayer.pause, 'CLICK_PAUSE');

            controller.subscribe(webPlayer.next, 'CLICK_NEXT_SONG');

            controller.subscribe(webPlayer.prev, 'CLICK_PREV_SONG');
            
            controller.subscribe(webPlayer.volume, 'CHANGE_VOLUME');
            
            // se suscribe el bind de eventos para los controles de reproducción
            controlView.init();

            progressBar.init();
            // se obtienen los parametros de conexión local y del mServer
            // este método dispara las llamadas a las suscripciones previamente definidas
            requester.getConnectionParmas();                
            webPlayer.listen();

            console.log('Application init success!! ');

        }
        
        self.subscribe = function(fn, context){
            controller.subscribe(fn, context.toUpperCase());
        }
        
        self.unsubscribe = function(fn, context){
            controller.unsubscribe(fn);
        }
    }
    
        var instance;
    
    return {
        getInstance: function(){
            if ( !instance )
                instance = new Application();
            
            return instance;
        }
    }
    
})(jQuery);