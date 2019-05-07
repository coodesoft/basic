/**
 * 
 */


$(function(){
    /*
    let app = Application.getInstance();
    app.unsubscribe(volume.init);
    app.subscribe(volume.init, 'INIT_VOLUME');
    */

    let webplayer = WebPlayer.getInstance();
    let volume = CircularVolumeView.getInstance('dvplayer');
    let param = new Object();
    
    param['volume'] = webplayer.volume();
    volume.init(param);
            

    let playback = SinglePlaybackView.getInstance();
    playback.init(webplayer.status());

    ChannelView.getInstance().updateWidth(50);
    AlbumView.getInstance().updateWidth(100);

})