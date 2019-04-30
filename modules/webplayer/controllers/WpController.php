<?php 
namespace app\modules\webplayer\controllers;

use yii\web\Controller;
use yii\helpers\Json;
use Yii;
use app\controllers\RadioAlbumController;

//cargamos el modelo de obtención e imágenes de albunes
use app\modules\webplayer\models\imagenalbum;
use app\modules\webplayer\models\AmpacheAlbum;

class WpController extends RadioAlbumController{
        
        
    public function actionConnectionParams(){
        $time = time();
        $password = Yii::$app->params['password'];
        $user = Yii::$app->params['user'];

        $tokenSource = $time . $user . $password;
        $token = Yii::$app->getSecurity()->generatePasswordHash($tokenSource);
        
        $response = [
            'user'  => $user,
            'token' => $token,
            't'     => $time,
        ];
        
        return Json::encode($response);
    } 
     

    public function actionObtenerlista()
    {
        $arreglo_dir = scandir('../modules/webplayer/webplayers/');
         $cant_elementos = sizeof($arreglo_dir);
    
        $c = 0;

        for($i = 0; $i < $cant_elementos;$i++) {
            if ($arreglo_dir[$i] <> '.' && $arreglo_dir[$i] <> '..'){
                $directorio[$c][0] = $arreglo_dir[$i];
                $directorio[$c][1] = $c;
                $c++;
            }
        }
        return Json::encode($directorio);
    }
    
    public function actionIndex(){
        return $this->render('index',['urlimg' => '/images/logoar.png', 'descripcion'=>'Radio Album']);
    }
		
	 public function actionImagenalbum($a){

	 		$Modelo = new imagenalbum(['album'=>$a]);
			$Imagen = $Modelo->Imagen();
			return $Imagen;
	 }	
	
	 public function actionSocial(){
	 		//cargamos los parametros
	 		$req = Yii::$app->request;
    		$i = $req->get('i');//skin
    		$c = $req->get('c');//canal
    		$a = $req->get('a');//album
    		$ModeloAlbum = new AmpacheAlbum;
	 		$NombreAlbum = $ModeloAlbum::find()->where(['id' => $a])->one();
	 		$NombreAlbum = $NombreAlbum->name;
	 		$Imagen = "/imagenalbum/".$a;
	 		//"renderizamos la vista"
        $salida = $this->render('index',['urlimg' => $Imagen, 'descripcion' => 'Escuchando '.$NombreAlbum.' en Radio Album!']);
        //le agregamos los parametros necesarios
        $salida .= '<div id="parametros" data-skin="'.$i.'vplayer" data-album="'.$a.'" data-channel="'.$c.'"></div>';
        //mostramos la vista
        return $salida;
	 }

}

?>
