<?php
namespace app\modules\webplayer\components\BarraNavIzq;

use yii\base\Widget;
use app\modules\EditorPaginas\components\htmlview\htmlview;

class BarraNavIzq extends Widget {
	private $Ultima_nov_tit;
	private $Ultima_nov_cuerpo;
	public $enlace;

	public function init(){
		parent::init();
		$consulta = (new \yii\db\Query())
				->select('*')
				->from('novedades')
				->all();
		$cant_reg = count($consulta);
		$resultado = $consulta[$cant_reg-1];
		if ($cant_reg != 0){			
			$this->Ultima_nov_tit = $resultado['titulo'];
			$this->Ultima_nov_cuerpo = $resultado['cuerpo'];
		} else {
			$this->Ultima_nov_tit = '';
			$this->Ultima_nov_cuerpo = '';
		}
	}
	
	public function run() {
		$html = '<div id="parametro-navizq" data-tit="'.$this->Ultima_nov_tit.'"></div>';
		return $this->render('barra',['UrlNovedades'=>$this->enlace]).$html;
	}

}
?>
