/**
 * 
 */
$(function(){
	
    let webplayer = WebPlayer.getInstance();
    let volume = CircularVolumeView.getInstance('jvplayer');
    let param = new Object();
    
    param['volume'] = webplayer.volume();
    volume.init(param);

    let playback = SinglePlaybackView.getInstance();
    playback.init(webplayer.status());

    ChannelView.getInstance().updateWidth(40);
    AlbumView.getInstance().updateWidth(105);
})