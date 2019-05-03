/**
 *
 */
 function play (){
     document.getElementsByClassName('ra-play')[0].classList.add('active');
     document.getElementsByClassName('ra-pause')[0].classList.remove('active');
 }

 function pause (){
     document.getElementsByClassName('ra-play')[0].classList.remove('active');
     document.getElementsByClassName('ra-pause')[0].classList.add('active');

 }

 function init (){
         ChannelView.getInstance().updateWidth(50);
 }

 $(function(){

     let app = Application.getInstance();
     let webplayer = WebPlayer.getInstance();

     app.unsubscribe(play);
     app.unsubscribe(pause);

     app.subscribe(play, 'PLAY_SONG');
     app.subscribe(pause, 'PAUSE_SONG');
     app.subscribe(init, 'INIT_CHANNEL_VIEW');

     let volume = CircularVolumeView.getInstance();

     app.unsubscribe(volume.init);
     app.subscribe(volume.init, 'INIT_VOLUME');

     let param = new Object();
     param['volume'] = webplayer.volume();

     volume.init(param);
     if (ChannelView.getInstance().CHANNEL_LIST)
         ChannelView.getInstance().updateWidth(50);
 });
