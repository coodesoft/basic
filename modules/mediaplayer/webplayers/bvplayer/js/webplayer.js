/**
 * 
 */

function play (){
    $('.ra-play').hide();
    $('.ra-pause').show();
}

function pause (){
    $('.ra-play').show();
    $('.ra-pause').hide();
}


$(function(){
	
    let app = Application.getInstance();
    let webplayer = WebPlayer.getInstance();
    let volume = CircularVolumeView.getInstance();
    
    app.unsubscribe(play);
    app.unsubscribe(pause);
    app.unsubscribe(volume.init);
    
    app.subscribe(play, 'PLAY_SONG');
    app.subscribe(pause, 'PAUSE_SONG');
    app.subscribe(volume.init, 'INIT_VOLUME');
    
    let param = new Object();
    param['volume'] = webplayer.volume();
    
    volume.init(param);
    ChannelView.getInstance().updateWidth(40);
    $('.ra-pause').hide();

})