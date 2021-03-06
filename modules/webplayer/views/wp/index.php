<?php 
	use app\modules\webplayer\components\BarraNavIzq\BarraNavIzq;
	use app\modules\webplayer\components\BarraNavIzq\BarraNavIzqAsset;
	BarraNavIzqAsset::register($this);

	use app\modules\webplayer\components\social\social;
	use app\modules\webplayer\components\social\socialAsset;
	socialAsset::register($this);

	use app\modules\webplayer\assets\IndexAsset;
	IndexAsset::register($this);

	use app\modules\webplayer\components\WpSelector\WpSelector;
	use app\modules\webplayer\components\WpSelector\WpSelectorAsset;
	WpSelectorAsset::register($this);

	$this->title = 'Radio Album';
	$this->params['breadcrumbs'][] = $this->title;

	$this->registerMetaTag(['property' => 'og:site_name', 'content' => 'Radio Album']);

	//meta  tags para el feibuk
	$this->registerMetaTag(['property' => 'og:title', 'content' => 'Radio Album']);
	$this->registerMetaTag(['name' => 'og:description', 'content' => $descripcion]);
	$this->registerMetaTag(['property' => 'og:image', 'content' => $urlimg]);
	
	//meta tag para el twiter
	$this->registerMetaTag(['name' => 'twitter:card', 'content' => 'summary']);
	$this->registerMetaTag(['name' => 'twitter:title', 'content' => 'Radio Album']);
	$this->registerMetaTag(['name' => 'twitter:description', 'content' => $descripcion]);
	$this->registerMetaTag(['name' => 'twitter:image', 'content' => $urlimg]);

?>
<div id="choclo"></div>
<div id="webplayer-wrapper" class="col-lg-8 col-lg-offset-2">
	<div id="wp-wrapper" class="row">
		<div id ="indica-carga">
			<div id="loading-img"></div>
			<div id="progressBarWrapper">
				<div id="progressBar"></div>
			</div>
        </div>
			<div id="wp-content-container" >
				<div id="ventana-rep" class="col-md-9 col-md-offset-2 col-lg-offset-1">
					<?= social::widget();?>
					<?= BarraNavIzq::widget();?>
					<div id="webplayer">
						<div id="info-canal" class="InfoControl"><div class='fl'><div class='fl2'></div></div>Selector de canales</div>
						<div id="info-album" class="InfoControl"><div class='fl'><div class='fl2'></div></div>Selector de álbunes</div>
						<div id="wp-audio-manipulation">
							<div id="wp-volume-control" data-Mover="" data-Valor="50" data-Tipo="">
								<div id="Actuador-Volumen"></div>
								<div id="Display-Volumen"></div>
							</div>
							<div id="wp-controls" class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3">
								<div id="play" class="wp-button wp-button-first" data-type="playback" data-status="active"></div>
								<div id="pause" class="wp-button" data-type="playback" data-status="inactive"></div>
								<div id="prev" class="wp-button" data-type="transition" data-status="inactive"></div>
								<div id="next" class="wp-button" data-type="transition" data-status="inactive"></div>
							</div>
							<div id="wp-player" data-actualplayback="" ></div>
							<div id="wp-playlist"></div>
						</div>
					<div id="wp-music-selector"></div>
				</div>
				<?= WpSelector::widget(['arreglado'	=> array('a','s','c','m','b','e','t','g','p','l','i','y','d','n','k','w','z','j','h','x','r','v','f','o','u','q')]);?>	
			</div>
		</div> 
		<div id="webplayer-assets" style="display:none;"></div>
	</div>
</div>
