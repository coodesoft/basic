<?php
use app\modules\mediaplayer\assets\MediaPlayerAsset;
MediaPlayerAsset::register($this);

use app\modules\mediaplayer\components\WpSelector\WpSelector;
use app\modules\mediaplayer\components\WpSelector\WpSelectorAsset;
WpSelectorAsset::register($this);

$this->title = 'Radio Album';

?>


<div class="col-12">
        <div id="RaMediaPlayer" class="skin-element">
            <audio id="RaAudio"></audio>
            <div class="ra-album-selector-container">
                <div class="ra-prev-album-nav ra-album-nav"></div>
                <div class="ra-album-list"></div>
                <div class="ra-playback-info"></div>
                <div class="ra-next-album-nav ra-album-nav"></div>
            </div>
            <div class="ra-channel-selector-container">
                <div class="ra-prev-ch-nav ra-ch-nav"></div>
                <div class="ra-ch-list"></div>
                <div class="ra-ch-name"></div>
                <div class="ra-next-ch-nav ra-ch-nav"></div>
            </div>
            <div class="ra-controls">
                <div class="ra-volume ra-control skin-element"></div>
                <div class="ra-play ra-control skin-element"></div>
                <div class="ra-pause ra-control skin-element"></div>
                <div class="ra-prevsong ra-control skin-element"></div>
                <div class="ra-nextsong ra-control skin-element"></div>
            </div>
        </div>
</div>


<div class="col-12">
    <?php echo WpSelector::widget(['arreglado'	=> array('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j')]); ?>	
</div>