<?php

namespace app\modules\mediaplayer\components\WpSelector;

use yii\web\AssetBundle;

class WpSelectorAsset extends AssetBundle
{
    public $sourcePath = '@app/modules/mediaplayer/components/WpSelector';

    public $css = [
        'css/WpSelector.css',
    ];
    
    public $js = [
        'js/SkinSelector.js',
    	'js/wpselector.js',
    ];
    
    public $depends = [
        'app\assets\AppAsset',
        'app\modules\mediaplayer\assets\MediaPlayerAsset',
    ];
}
?>
