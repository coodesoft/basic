<?php

namespace app\modules\EditorPaginas;

use yii\web\AssetBundle;

class EditorAssets extends AssetBundle
{
    public $sourcePath = '@app/modules/EditorPaginas';
    public $css = [];
    public $js = [
		'/components/ckeditor/ckeditor.js',
		'js/ep.js',
	];
    public $depends = [
        //'yii\web\YiiAsset',
        //'yii\bootstrap\BootstrapAsset',
    ];
}
