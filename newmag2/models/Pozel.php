<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "pozel".
 *
 * @property string $naim
 */
class Pozel extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'pozel';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['naim'], 'required'],
            [['naim'], 'string'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'naim' => 'Naim',
        ];
    }
}
