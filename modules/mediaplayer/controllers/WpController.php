<?php 
namespace app\modules\mediaplayer\controllers;

use yii\web\Controller;
use yii\helpers\Json;
use yii\helpers\Url;
use Yii;
use app\controllers\RadioAlbumController;

use app\models\Channel;
use app\models\Album;

use yii\filters\AccessControl;


class WpController extends RadioAlbumController{
        
        
    private $imgBasePath = '/opt/lampp/htdocs/radioalbum/common/data/albums';
    
    public function behaviors(){
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['connection-params', 
                                      'index', 
                                      'channels', 
                                      'albums',
                                      'thumbnail',
                                      'social',
                                     ],
                        'allow' => true,
                        'roles' => ['?'],
                    ],
                ],
            ],
        ];
    }
    
    protected function getMServerConnectionParams(){
        $time = time();
        $password = Yii::$app->params['password'];
        $user = Yii::$app->params['user'];

        $tokenSource = $time . $user . $password;
        $token = Yii::$app->getSecurity()->generatePasswordHash($tokenSource);
        return [
            'token' => $token,
            't'     => $time,
        ];
    
    }
    
    protected function checkPublicPermission(){
        $time = Yii::$app->request->get('t');
        $token = Yii::$app->request->get('token');

        $password = Yii::$app->params['password'];
        $user = Yii::$app->params['user'];      

        $tokenSource = $time . $user . $password;
        $toValidate = md5($tokenSource);
        return $token == $toValidate;
    } 
        
    public function actionConnectionParams(){
        $time = time();
        $password = Yii::$app->params['password'];
        $user = Yii::$app->params['user'];

        $tokenSource = $time . $user . $password;
        $token = md5($tokenSource);
        
        $response = [
            'token'     => $token,
            't'         => $time,
            'mserver'   => $this->getMServerConnectionParams(), 
        ];
        
        return Json::encode($response);
    } 
            
    public function actionObtenerlista(){
        $arreglo_dir = scandir('../modules/mediaplayer/webplayers/');
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
        return $this->render('index', [ 'urlimage' => '/images/logora2.png', 
                                        'descripcion'=>'Radio Album'
                                      ]);
    }

    public function actionChannels(){
      if ($this->checkPublicPermission()){
          $channels = Channel::find()->orderBy('name ASC')->all();
          $arrChannel = [];
          foreach($channels as $channel)
            $arrChannel[] = ['id' => $channel->id, 'name' => $channel->name];
          
          return Json::encode($arrChannel);
      }
      
    }
    
    public function actionAlbums(){
      if ($this->checkPublicPermission()){
          $id = Yii::$app->request->get('id');
          $channel = Channel::find()->with('albums.artists')->where(['id' => $id])->one();

          $arrAlbums = [];
          foreach($channel->albums as $album){
            $params = Json::decode($this->actionConnectionParams());
          
            $arrAlbums[] = [
                'id' => $album->id,
                'name' => $album->name,
                'artist' => $album->artists[0]->name,
                'art' => Url::to(['/mediaplayer/wp/thumbnail', 't' => $params['t'], 'token' => $params['token'], 'id' => $album->id], true),
            ];    
          }
          return Json::encode($arrAlbums);
      }
    }

    public function actionThumbnail(){
      if ($this->checkPublicPermission()){
        $id = Yii::$app->request->get('id');
        
        $album =  Album::findOne($id);
        $image =  $this->imgBasePath . '/' . $album->art;
        
        $mime = mime_content_type($image);
        return \Yii::$app->response->sendFile($image, null, ['mimeType' => $mime])->send();
        
      }
    }
    
    public function actionSongs(){
        if ($this->checkPublicPermission()){
            $id = Yii::$app->request->get('id');
            
            $album = Album::find()->with('songs')->where(['id' => $id])->one();
            $arrSongs = [];
            $params = $this->getMServerConnectionParams();
            
            foreach($album->songs as $song){
                $arrSongs[] = [
                    'id' => $song->id,
                    'name' => $song->name,
                ];
            }
            return Json::encode($arrSongs);
        }
    }

    public function actionSocial(){
	 		//cargamos los parametros
	 	$req = Yii::$app->request;
    	$c = $req->get('c');//canal
    	$a = $req->get('a');//album

        $album = Album::find()->where(['id' => $a])->one();
	 	$NombreAlbum = $album->name;
        
        $params = Json::decode($this->actionConnectionParams());
        $urlImage = Url::to(['/mediaplayer/wp/thumbnail', 't' => $params['t'], 'token' => $params['token'], 'id' => $album->id], true);
        
        $channel = Channel::findOne($c);
        

        return $this->render('index',[ 'urlimage' =>$urlImage, 
                                       'album' => $album->id,
                                       'channel' => $channel->id,
                                       'channelName' => $channel->name,
                                       'descripcion' => 'Escuchando '.$NombreAlbum.' en Radio Album!'
                                     ]
                            );
	 }

}

?>
