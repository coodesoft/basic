<?php 

namespace app\models;

class MediaObject extends \yii\db\ActiveRecord{
 
    	public static function getDb() {
		return \Yii::$app->dbmedia;
	}

}
