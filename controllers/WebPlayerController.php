<?php 
namespace app\controllers;

use Yii;
use yii\web\Controller;
use yii\helpers\BaseJson;

class WebPlayerController extends RadioAlbumController{
    
    private $server_url = 'http://' . $_SERVER['SERVER_NAME'];
    
    private $mserver_uri = '/mserver/web/index.php?';
    
    private $user
        
        
        
    private function actionConnectionParams(){
        $time = time();
        $password = Yii::$app->params['password'];
        $user = Yii::$app->params['user'];

        $tokenSource = $time . $user . $password;
        $token = Yii::$app->getSecurity()->generatePasswordHash($tokenSource);
        
        return [
            'user'  => $user,
            'token' => $token,
            't'     => $time,
        ];
    } 
    
    

    public function actionObtenerlista()
    {
        $arreglo_dir = scandir('../components/WebPlayer/webplayers/');
        $cant_elementos = sizeof($arreglo_dir);
    
        $c = 0;

        for($i = 0; $i < $cant_elementos;$i++) {
            if ($arreglo_dir[$i] <> '.' && $arreglo_dir[$i] <> '..'){
                $directorio[$c][0] = $arreglo_dir[$i];
                $directorio[$c][1] = $c;
                $c++;
            }
        }
        return BaseJson::encode($directorio);
    }
    
    
}

?>