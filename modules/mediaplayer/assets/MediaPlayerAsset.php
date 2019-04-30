<?php

namespace app\modules\mediaplayer\assets;

use yii\web\AssetBundle;

class MediaPlayerAsset extends AssetBundle
{
    public $sourcePath = '@app/modules/mediaplayer/assets';
        
    public $css = [
        'css/media.css',
        'css/base.css',
    ];
    
    public $js = [
        'js/Config.js',
        'js/lib/jPlayer/js/jplayer/jquery.jplayer.min.js',
        'js/lib/marquee/jquery.marquee.js',
        'js/lib/jquery-ui/jquery-ui.min.js',
        'js/lib/propeller/propeller.min.js',
        'js/Subject.js',
        'js/models/Collection.js',
        'js/models/MediaList.js',
        'js/models/Song.js',
        'js/models/Album.js',
        'js/models/Channel.js',
        'js/views/ChannelView.js',
        'js/views/AlbumView.js',
        'js/views/ControlView.js',
        'js/views/CircularVolumeView.js',
        'js/views/HorizontalVolumeView.js',
        'js/views/VerticalVolumeView.js',
        'js/Requester.js',
        'js/modules/Store.js',
        'js/modules/Navigation.js',
        'js/modules/WebPlayer.js',
        'js/modules/Playback.js',
        'js/Application.js',
        'js/index.js'
    ];
    
    public $depends = [
        'app\assets\AppAsset',
    ];
}
?>
