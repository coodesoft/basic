<?php

namespace app\modules\mediaplayer\components\BarraNavIzq;

use yii\web\AssetBundle;

class BarraNavIzqAsset extends AssetBundle
{
    public $sourcePath = '@app/modules/mediaplayer/components/BarraNavIzq';

    public $css = [
        'css/BarraNavIzq.css',
    ];
    
    public $js = [
    	'js/BarraNavIzq.js',
    ];
    
    public $depends = [
        'app\assets\AppAsset',
    ];
}
?>
