<?php

namespace app\models;
use yii\db\ActiveRecord;

class BlogList extends  ActiveRecord{

      public static function tableName()
      {
             return 'comments'; 
      }


      public static function getAll()
      {
             $data = self::find()->all();
             return $data;
      }

}