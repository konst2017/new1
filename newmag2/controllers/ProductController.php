<?php
/**
 * Created by PhpStorm.
 * User: Andrey
 * Date: 09.05.2016
 * Time: 10:50
 */

namespace app\controllers;
use app\models\Category;
use app\models\Product;
use Yii;
use yii\data\ActiveDataProvider;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use app\models\pozel;

class ProductController extends AppController{

    public function actionView($id){
        $id = Yii::$app->request->get('id');
        $product = Product::findOne($id);
  if(empty($product))
            throw new \yii\web\HttpException(404, 'Такого товара нет');
//        $product = Product::find()->with('category')->where(['id' => $id])->limit(1)->one();
        $hits = Product::find()->where(['hit' => '1'])->limit(6)->all();
        $this->setMeta('E-SHOPPER | ' . $product->name, $product->keywords, $product->description);
        return $this->render('view', compact('product', 'hits'));
 
    }

  public function actionDob($name2){
        $name2 = Yii::$app->request->get('name2');
        
//        
       $posts = Yii::$app->db->createCommand("INSERT INTO pozel(naim) values('{$name2}')")
            ->execute();
$dataProvider = new ActiveDataProvider([
            'query' => pozel::find(),
        ]);
        return $this->render('dob', compact('product', 'hits'), [
            'dataProvider' => $dataProvider,
 ]);
 
    }

public function actionindex($id){
        $id = Yii::$app->request->get('id');
        $product = Product::findOne($id);
  if(empty($product))
            throw new \yii\web\HttpException(404, 'Такого товара нет');
//        $product = Product::find()->with('category')->where(['id' => $id])->limit(1)->one();
        $hits = Product::find()->where(['hit' => '1'])->limit(6)->all();
        $this->setMeta('E-SHOPPER | ' . $product->name, $product->keywords, $product->description);
        return $this->render('view', compact('product', 'hits'));
 
    }
 


} 