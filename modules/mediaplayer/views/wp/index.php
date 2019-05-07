<?php
use app\modules\mediaplayer\assets\MediaPlayerAsset;
MediaPlayerAsset::register($this);

use app\modules\mediaplayer\components\WpSelector\WpSelector;
use app\modules\mediaplayer\components\WpSelector\WpSelectorAsset;
WpSelectorAsset::register($this);


use app\modules\mediaplayer\components\BarraNavIzq\BarraNavIzq;
use app\modules\mediaplayer\components\BarraNavIzq\BarraNavIzqAsset;
BarraNavIzqAsset::register($this);

use app\modules\mediaplayer\components\social\social;
use app\modules\mediaplayer\components\social\socialAsset;
socialAsset::register($this);

$this->title = 'Radio Album';


$this->title = 'Radio Album';
$this->params['breadcrumbs'][] = $this->title;

$this->registerMetaTag(['property' => 'og:site_name', 'content' => 'Radio Album']);

//meta  tags para el feibuk
$this->registerMetaTag(['property' => 'og:title', 'content' => 'Radio Album']);
$this->registerMetaTag(['name' => 'og:description', 'content' => $descripcion]);
$this->registerMetaTag(['property' => 'og:image', 'content' => $urlimage]);
	
//meta tag para el twiter
$this->registerMetaTag(['name' => 'twitter:card', 'content' => 'summary']);
$this->registerMetaTag(['name' => 'twitter:title', 'content' => 'Radio Album']);
$this->registerMetaTag(['name' => 'twitter:description', 'content' => $descripcion]);
$this->registerMetaTag(['name' => 'twitter:image', 'content' => $urlimage]);


$this->title = $descripcion;
?>

<div id="progressBar" class="col-12">
    <div id="progressBarIndicator"></div>
</div>

<div class="col-12">
<?php echo BarraNavIzq::widget();?>

</div>



<div class="col-12" style="min-height: 440px">
        <div id="RaMediaPlayer" class="skin-element">
            <?php echo social::widget();?>
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
                <div class="ra-volume ra-control"></div>
                <div class="ra-play ra-control skin-element"></div>
                <div class="ra-pause ra-control skin-element"></div>
                <div class="ra-prevsong ra-control skin-element"></div>
                <div class="ra-nextsong ra-control skin-element"></div>
            </div>
        </div>
        <?php if ( isset($album) ){?>
            <div id="imageUrl" data-url="<?php echo $urlimage ?>"></div>
            <div id="albumId" data-album="<?php echo $album?>"></div>
            <div id="channelId" data-channel="<?php echo $channel?>"></div>
            <div id="channelName" data-channelName="<?php echo $channelName ?>"></div>
        <?php } ?>
</div>


<div class="col-12">
    <?php echo WpSelector::widget(['arreglado'	=> array('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j')]); ?>	
</div>