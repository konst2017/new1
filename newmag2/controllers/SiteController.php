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
class SiteController extends Controller
{
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post', 'get'],
                ],
            ],
        ];
    }

    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    public function actionIndex()
    {
        return $this->render('index');
    }

  public function actiononas()
    {
        return $this->render('onas');
    }

    public function actionLogin()
    {
        if (!\Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        }
        return $this->render('login', [
            'model' => $model,
        ]);
    }

    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    public function actionContact()
    {
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post()) && $model->contact(Yii::$app->params['adminEmail'])) {
            Yii::$app->session->setFlash('contactFormSubmitted');

            return $this->refresh();
        }
        return $this->render('contact', [
            'model' => $model,
        ]);
    }

    public function actionAbout()
    {
        return $this->render('about');
    }



public function actionSay($target = '')

{
  
$target ="PRiwet";


  return $this->render('say', ['target' => $target]);
}

public function actionPoisk($target = '')

{
    return $this->render('poisk', ['target' => $target]);
}

public function actionSpezw($target = '')

{
    return $this->render('spezw', ['target' => $target]);
}


public function actionAdmag($target = '')

{
    return $this->render('admag', ['target' => $target]);
}

public function actionRodorg($target = '')

{
    return $this->render('rodorg', ['target' => $target]);
}


public function actionSert($target = '')

{
    $hits = Sert::find()->limit(6)->all();
     
        return $this->render('sert', compact('hits'));
}

public function actionBrend($target = '')

{
    return $this->render('brend', ['target' => $target]);
}
public function actionDostaw($target = '')

{
    return $this->render('dostaw', ['target' => $target]);
}
public function actionKonf($target = '')

{
    return $this->render('konf', ['target' => $target]);
}
public function actionSogl($target = '')

{
    return $this->render('sogl', ['target' => $target]);
}

public function actionNewt()

{
  $hits = Product::find()->where(['new' => '1'])->limit(6)->all();
     
        return $this->render('newt', compact('hits'));
}	
	
public function actionLuht()

{
  $hits = Product::find()->where(['sale' => '1'])->limit(6)->all();
     
        return $this->render('luht', compact('hits'));
}	

public function actionKoment()

{
    
$array = BlogList::getAll();
        return $this->render('komment',['varInView' => $array]);

}


public function actionPrpozel()

{
    
$array = BlogList2::getAll();
        return $this->render('prpozel',['varInView' => $array]);

}		


   public function actionTest(){
        if( Yii::$app->request->isAjax ){
            debug(Yii::$app->request->post());
            return 'test';
        }
}

	
}
