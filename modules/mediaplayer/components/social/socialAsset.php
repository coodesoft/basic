<?php

namespace app\modules\mediaplayer\components\social;

use yii\web\AssetBundle;

class socialAsset extends AssetBundle
{
    public $sourcePath = '@app/modules/mediaplayer/components/social';

    public $css = [
        'css/social.css',
    ];
    
    public $js = [
    	'js/social.js',
    ];
    
    public $depends = [
        'app\assets\AppAsset',
        'app\modules\mediaplayer\assets\MediaPlayerAsset',
    ];
}
?>
