<?php
	namespace app\modules\webplayer\models;

	use yii\db\ActiveRecord;
	
	class AmpacheImagen extends ActiveRecord
	{
		public static function getDb() {
    		return \Yii::$app->dbampache;
		}
		
		public static function tableName() {
    		return 'image';
		}
		
	}
