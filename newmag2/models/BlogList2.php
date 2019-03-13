<?php

namespace app\models;
use yii\db\ActiveRecord;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use app\models\pozel;
use Yii;
class BlogList2 extends  ActiveRecord{

      public static function tableName()
      {
            return 'pozel'; 



      }


      public static function getAll()
      {
             $data = self::find()->select('naim, count(naim) as pow ')
->groupby(['naim'])
->orderby(['pow'=>SORT_DESC])
->all();
            return $data;


  

       



      }

}