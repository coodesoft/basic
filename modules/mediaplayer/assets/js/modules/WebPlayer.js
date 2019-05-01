var WebPlayer = (function($){

  function WebPlayer(){
      
      let self = this;
      
      let _album;
      
      let _actualSong;
      
      let _params;
      
      let _audio = document.getElementById(Config.ui.AUDIO);
      
      let controller = Subject.getInstance();
      
      
      const MEDIA_CONTENT_URL = 'http://localhost/mserver/web/index.php?r=media/public-song';

      
      let _getSongUrl = function(songId){
          return MEDIA_CONTENT_URL + '&t='+_params['t']+'&token='+_params['token']+'&id='+songId;
      }
      
      let setInitialVolume = function(){
          _audio.volume = 0.5;
          let param = new Object();
          param['volume'] = _audio.volume;
          controller.notify(param, 'INIT_VOLUME');
      }
      
      self.load  = function(album){
          _album = album;
          self.assignSong();
      }
      
      self.configure = function(data){
          _params = data['mserver'];
          setInitialVolume();
      }
      
      self.assignSong = function(){
          _actualSong = _album.songs.next();
          _audio.src = _getSongUrl(_actualSong.id);

          controller.notify(_actualSong, 'ASSIGN_SONG');
      }
      
      self.autoPlay = function(){
          let promise = _audio.play();
          if (promise !== undefined) {
            promise.then(_ => {
                console.log('Reproducción automática iniciada');
       
                let object = new Object();
                object['song'] = _actualSong,
                object['album'] = _album;
                controller.notify(object, 'PLAY_SONG');
           }).catch(error => {
                alert('No se pudo iniciar la reproducción automática. :( La configuración de tu navegador no lo permite.')
                console.log('Descripción del error:')
                console.log(error);
            });
        }
      }
      
      self.play = function(){
          _audio.play();
          
          let object = new Object();
          object['song'] = _actualSong,
          object['album'] = _album;

          controller.notify(object, 'PLAY_SONG');
          
      }
      
      self.pause = function(){
          _audio.pause();
          controller.notify(_actualSong, 'PAUSE_SONG');
      }
      
      self.volume = function(newValue = null){
          if (newValue)
            _audio.volume = newValue;
          
          return _audio.volume;
      }
      
      self.next = function(){
          if ( !_album.songs.isLast()){
               _actualSong = _album.songs.next();
              _audio.src = _getSongUrl(_actualSong.id);

              controller.notify(_actualSong, 'NEXT_SONG');
              self.play();
              //Hay que ver si es necesario o se puede hacer con comportamiento interno
          } else
              controller.notify(_actualSong, 'END_ALBUM');
      }
      
      self.prev = function(){
          if ( !_album.songs.isFirst() ){
              _actualSong = _album.songs.prev();
              _audio.src = _getSongUrl(_actualSong.id);
              controller.notify(_actualSong, 'PREV_SONG');
              self.play();
          }
      }
      
      self.actual = function(){
          return _actualSong;
      }
      
      self.songs = function(){
          return _album.songs;
      }
      
      self.listen = function(){
          _audio.addEventListener('ended', function(){
             controller.notify(null, 'END_AUDIO');
          });
          
      }
  }

  var instance;

  return {
    getInstance: function(){
      if ( !instance )
        instance = new WebPlayer();
      return instance;
    }
  }
})(jQuery);