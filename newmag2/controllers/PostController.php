<?php
/**
 * Created by PhpStorm.
 * User: Andrey
 * Date: 14.03.2016
 * Time: 21:17
 */

namespace app\controllers;
use app\models\Category;
use Yii;
use app\models\TestForm;

class PostController extends AppController{

    public $layout = 'main';

    public function beforeAction($action){
        if( $action->id == 'index' ){
            $this->enableCsrfValidation = false;
        }
        return parent::beforeAction($action);
    }

    public function actionIndex($target = ''){
		$target ="soob";	
        if( Yii::$app->request->isAjax ){
            debug(Yii::$app->request->post());
            return 'test';
		$target ="soob";	
        }

        $model = new TestForm();
        /*$model->name = 'Автор';
//        $model->email = '111';
        $model->text = 'Текст сообщения';
        $model->save();*/

        if( $model->load(Yii::$app->request->post()) ){
            if( $model->save() ){
				
                Yii::$app->session->setFlash('success', 'Данные приняты и отправлены на модерацию');
				$target ="soob";
                return $this->refresh();
            }else{
                Yii::$app->session->setFlash('error', 'Ошибка');
            }
        }

        $this->view->title = 'Все статьи';
        return $this->render('test', compact('model',['target' => $target]));
    }

    public function actionShow(){
        $this->view->title = 'Одна статья!';
        $this->view->registerMetaTag(['name' => 'keywords', 'content' => 'ключевики...']);
        $this->view->registerMetaTag(['name' => 'description', 'content' => 'описание страницы...']);

        // $cats = Category::find()->all(); // отложенная загрузка
        $cats = Category::find()->with('products')->all(); // жадная загрузка

        return $this->render('show', compact('cats'));
    }

} 