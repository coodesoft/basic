/**
 * 
 */

$(function(){
	
    let app = Application.getInstance();
    let webplayer = WebPlayer.getInstance();
    let volume = CircularVolumeView.getInstance('avplayer');
    let playback = DoblePlaybackView.getInstance();
    let param = new Object();
    
    param['volume'] = webplayer.volume();
    volume.init(param);

    playback.init(webplayer.status());

    
    if (ChannelView.getInstance().CHANNEL_LIST)
        ChannelView.getInstance().updateWidth(50);
    
    if (AlbumView.getInstance().ALBUM_LIST)
        AlbumView.getInstance().updateWidth(120);

});