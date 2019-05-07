/**
 * 
 */
$(function(){
	
    let app = Application.getInstance();
    let webplayer = WebPlayer.getInstance();
    let volume = HorizontalVolumeView.getInstance(118);
    let playback = DoblePlaybackView.getInstance();
    let param = new Object();
    

    param['volume'] = webplayer.volume();
    volume.init(param);
    playback.init(webplayer.status());


    
    ChannelView.getInstance().updateWidth(45);
    AlbumView.getInstance().updateWidth(180);
});