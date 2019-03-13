<?php

namespace app\modules\admin\models;

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
	public $image;
    public $gallery;

    public function behaviors()
    {
        return [
            'image' => [
                'class' => 'rico\yii2images\behaviors\ImageBehave',
            ]
        ];
    }
	
	 

    public function getCategory(){
        return $this->hasOne(Category::className(), ['id' => 'category_id']);
    }

    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'logo';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
          [['id'], 'integer'],
            [['name', 'img'], 'string', 'max' => 255],
			[['image'], 'file', 'extensions' => 'png, jpg'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'Номер',
             'name' => 'Имя',
            'image' => 'Название рисунка',
        ];
    }
	
	 public function upload(){
        if($this->validate()){
            $path = 'upload/store/' . $this->image->baseName . '.' . $this->image->extension;
            $this->image->saveAs($path);
            $this->attachImage($path, true);
            @unlink($path);
            return true;
        }else{
            return false;
        }
    }

    public function uploadGallery(){
        if($this->validate()){
            foreach($this->gallery as $file){
                $path = 'upload/store/' . $file->baseName . '.' . $file->extension;
                $file->saveAs($path);
                $this->attachImage($path);
                @unlink($path);
            }
            return true;
        }else{
            return false;
        }
    }
	
	
}
