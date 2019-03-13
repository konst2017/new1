		

<?php

/* @var $this yii\web\View */



use yii\widgets\ActiveForm;
use yii\helpers\Html;
use mihaildev\ckeditor\CKEditor;

use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;
use app\assets\ltAppAsset;

use yii\data\Pagination;
use app\models\Category;
use app\models\Product;
use app\controllers\CategoryController;

AppAsset::register($this);
ltAppAsset::register($this);$this->title = 'My Yii Application';
?>	
		<!-- START PAGE-CONTENT -->
		<section class="page-content">
			<div class="container">
	            <div class="row">
					<div class="col-md-12">
						<ul class="page-menu">
							
							
						</ul>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3">
						<!-- CATEGORY-MENU-LIST START -->
	                    <div class="left-category-menu hidden-sm hidden-xs">
	                        <div class="left-product-cat">
	                            <div class="category-heading">
	                                <h2>Категорий</h2>
	                            </div>
	                            <div class="category-menu-list">
<ul class="catalog category-products"><?= \app\components\MenuWidget::widget(['tpl' => 'menu'])?>
</ul>   
	                              
	                            </div>
	                        </div>
	                    </div>
						<!-- END CATEGORY-MENU-LIST -->
						
					</div>
					<div class="col-md-9 col-xs-12">
						<!-- START PRODUCT-BANNER -->
						
						<!-- END PRODUCT-BANNER -->
						<!-- START PRODUCT-AREA -->
						
							<div class="row">
								<div class="col-xs-12 col-md-12">

<div class="col-sm-9 padding-right">
<div class="features_items"><!--features_items-->
<?php

//debug($model);
?>

 <?php if( Yii::$app->session->hasFlash('success') ): ?>
        <div class="alert alert-success alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <?php echo Yii::$app->session->getFlash('success'); ?>
        </div>
    <?php endif;?>

<?php $form = ActiveForm::begin(['options' => ['id' => 'testForm']]) ?>
<?= $form->field($model, 'name')?>
<?= $form->field($model, 'email')->input('email')?>
<?= yii\jui\DatePicker::widget(['name' => 'attributeName']) ?>
<?=
    $form->field($model, 'text')->widget(CKEditor::className(),[
    'editorOptions' => [
    'preset' => 'full', //разработанны стандартные настройки basic, standard, full данную возможность не обязательно использовать
    'inline' => false, //по умолчанию false
    ],
    ]);
?>
<?php //echo $form->field($model, 'text')->textarea(['rows' => 5])?>
<?= Html::submitButton('Отправить', ['class' => 'btn btn-success'])?>

 
<?php ActiveForm::end() ?>
 <h1> <?= Html::encode($target) ?></h1>
</div><!--features_items-->
</div>
</div>
</div>
</section>

		
									
														
														
													
						
			
		
		

	
 
