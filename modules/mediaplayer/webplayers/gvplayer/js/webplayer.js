/**
 * 
 */
$(function(){
	
    let app = Application.getInstance();
    let webplayer = WebPlayer.getInstance();
    let volume = CircularVolumeView.getInstance('gvplayer');
    let playback = SinglePlaybackView.getInstance();
    let param = new Object();
    

    param['volume'] = webplayer.volume();
    volume.init(param);
    playback.init(webplayer.status());

    ChannelView.getInstance().updateWidth(50);
    AlbumView.getInstance().updateWidth(166);
});
