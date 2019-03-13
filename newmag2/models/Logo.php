<?php

namespace app\models;
use yii\db\ActiveRecord;
use Yii;

/**
 * This is the model class for table "logo".
 *
 * @property int $id
 * @property int $category_id
 * @property string $name
 * @property string $img
 */
class Logo extends \yii\db\ActiveRecord
{

 public function behaviors()
    {
        return [
            'image' => [
                'class' => 'rico\yii2images\behaviors\ImageBehave',
            ]
        ];
    }

    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'logo';
    }
 public function getCategory(){
        return $this->hasOne(Category::className(), ['id' => 'category_id']);
    }
   }
