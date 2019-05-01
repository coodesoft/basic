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

$(function(){
	
    let app = Application.getInstance();
    let webplayer = WebPlayer.getInstance();
    
    app.unsubscribe(play);
    app.unsubscribe(pause);
    
    app.subscribe(play, 'PLAY_SONG');
    
    app.subscribe(pause, 'PAUSE_SONG');
    
    
    let volume = CircularVolumeView.getInstance();

    app.unsubscribe(volume.init);
    app.subscribe(volume.init, 'INIT_VOLUME');
    
    let param = new Object();
    param['volume'] = webplayer.volume();
    
    volume.init(param);
})