<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\ContactForm;
use app\models\BlogList; 
use app\models\BlogList2; 

use app\models\Category;
use app\models\Product;
use app\models\Sert;

use yii\data\Pagination;
class NewController extends Controller
{
   



public function actionSay($target = '')




{
  


  return $this->render('say', ['target' => $target]);
}

public function actionIfixit($target = '')

{
    return $this->render('ifixit', ['target' => $target]);
}

public function actionPoc($target = '')

{
    return $this->render('poc', ['target' => $target]);
}

	
}
