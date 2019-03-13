<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "raspis".
 *
 * @property string $email
 */
class Raspis extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'raspis';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['email'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'email' => 'Email',
        ];
    }
}
